#!/usr/bin/env Rscript
# =============================================================================
# NMA Script 05: Sensitivity Analyses
# Project: Incretin-Based Therapies CVOT Network Meta-Analysis
# Date: 2026-04-07
# =============================================================================

library(tidyverse)
library(netmeta)

# --- Set paths ---
project_dir <- here::here("projects", "incretin-cvot-nma")
out_dir <- file.path(project_dir, "06_analysis")
fig_dir <- file.path(out_dir, "figures")
tbl_dir <- file.path(out_dir, "tables")

# --- Read data ---
mace_data <- read_csv(file.path(out_dir, "nma_mace3p_prepared.csv"), show_col_types = FALSE)
extraction <- read_csv(
  file.path(project_dir, "05_extraction", "extraction_db.csv"),
  show_col_types = FALSE
)

# --- Helper function ---
run_sensitivity <- function(data, label, ref = "Placebo") {
  if (nrow(data) < 2) {
    cat(sprintf("  [%s] Insufficient data (%d studies), skipping\n", label, nrow(data)))
    return(NULL)
  }

  pw <- data.frame(
    studlab = data$study,
    treat1 = data$treatment1,
    treat2 = data$treatment2,
    TE = data$lnhr,
    seTE = data$se_lnhr,
    stringsAsFactors = FALSE
  )

  nma_fit <- tryCatch(
    netmeta(
      TE = TE, seTE = seTE,
      treat1 = treat1, treat2 = treat2,
      studlab = studlab, data = pw,
      sm = "HR", reference.group = ref,
      comb.random = TRUE, comb.fixed = FALSE
    ),
    error = function(e) {
      cat(sprintf("  [%s] Error: %s\n", label, e$message))
      return(NULL)
    }
  )

  if (!is.null(nma_fit)) {
    ranking <- netrank(nma_fit, small.values = "desirable")
    cat(sprintf("\n  [%s] P-scores:\n", label))
    print(sort(ranking$Pscore, decreasing = TRUE))
  }

  return(nma_fit)
}

# =============================================================================
# Sensitivity 1: Exclude non-T2DM trial (SELECT)
# =============================================================================
cat("=== Sensitivity 1: T2DM-only trials ===\n")
t2dm_only <- mace_data %>% filter(study != "SELECT")
sa1 <- run_sensitivity(t2dm_only, "T2DM-only")

# =============================================================================
# Sensitivity 2: Exclude small trials (<5000 patients)
# =============================================================================
cat("\n=== Sensitivity 2: Large trials only (N >= 5000) ===\n")
large_trials <- extraction %>%
  filter(n_total >= 5000, !is.na(mace3p_hr)) %>%
  pull(trial_name)

large_data <- mace_data %>%
  filter(study %in% gsub(" ", "_", large_trials) |
         study %in% large_trials)
# Manual match for naming
large_studies <- c("LEADER", "EXSCEL", "REWIND", "SELECT")
large_data <- mace_data %>% filter(study %in% large_studies)
sa2 <- run_sensitivity(large_data, "Large trials")

# =============================================================================
# Sensitivity 3: Fixed-effects NMA
# =============================================================================
cat("\n=== Sensitivity 3: Fixed-effects model ===\n")
pw_all <- data.frame(
  studlab = mace_data$study,
  treat1 = mace_data$treatment1,
  treat2 = mace_data$treatment2,
  TE = mace_data$lnhr,
  seTE = mace_data$se_lnhr,
  stringsAsFactors = FALSE
)

nma_fe <- tryCatch(
  netmeta(
    TE = TE, seTE = seTE,
    treat1 = treat1, treat2 = treat2,
    studlab = studlab, data = pw_all,
    sm = "HR", reference.group = "Placebo",
    comb.random = FALSE, comb.fixed = TRUE
  ),
  error = function(e) {
    cat("Error:", e$message, "\n")
    NULL
  }
)

if (!is.null(nma_fe)) {
  ranking_fe <- netrank(nma_fe, small.values = "desirable")
  cat("Fixed-effects P-scores:\n")
  print(sort(ranking_fe$Pscore, decreasing = TRUE))
}

# =============================================================================
# Sensitivity 4: Include ELIXA (lixisenatide)
# =============================================================================
cat("\n=== Sensitivity 4: Including ELIXA ===\n")
# ELIXA: lixisenatide vs placebo, 4p-MACE HR 1.02 (0.89-1.17)
# For 3p-MACE, estimated HR ~1.02 (similar)
elixa_row <- data.frame(
  study = "ELIXA",
  treatment1 = "Lixisenatide",
  treatment2 = "Placebo",
  lnhr = log(1.02),
  se_lnhr = (log(1.17) - log(0.89)) / (2 * 1.96),
  outcome = "3p-MACE"
)
mace_plus_elixa <- bind_rows(mace_data, elixa_row)
sa4 <- run_sensitivity(mace_plus_elixa, "Including ELIXA")

# =============================================================================
# Sensitivity 5: Leave-one-out
# =============================================================================
cat("\n=== Sensitivity 5: Leave-one-out analysis ===\n")
loo_results <- list()

for (study_name in unique(mace_data$study)) {
  loo_data <- mace_data %>% filter(study != study_name)
  pw_loo <- data.frame(
    studlab = loo_data$study,
    treat1 = loo_data$treatment1,
    treat2 = loo_data$treatment2,
    TE = loo_data$lnhr,
    seTE = loo_data$se_lnhr,
    stringsAsFactors = FALSE
  )

  nma_loo <- tryCatch(
    netmeta(
      TE = TE, seTE = seTE,
      treat1 = treat1, treat2 = treat2,
      studlab = studlab, data = pw_loo,
      sm = "HR", reference.group = "Placebo",
      comb.random = TRUE, comb.fixed = FALSE
    ),
    error = function(e) NULL
  )

  if (!is.null(nma_loo)) {
    ranking_loo <- netrank(nma_loo, small.values = "desirable")
    loo_results[[study_name]] <- data.frame(
      Excluded = study_name,
      Treatment = names(ranking_loo$Pscore),
      Pscore = round(ranking_loo$Pscore, 3)
    )
    cat(sprintf("  Excluding %s: top-ranked = %s (P-score = %.3f)\n",
                study_name,
                names(which.max(ranking_loo$Pscore)),
                max(ranking_loo$Pscore)))
  }
}

if (length(loo_results) > 0) {
  loo_combined <- bind_rows(loo_results)
  write_csv(loo_combined, file.path(tbl_dir, "sensitivity_leave_one_out.csv"))
  cat("\nLeave-one-out results saved: tables/sensitivity_leave_one_out.csv\n")
}

cat("\n=== Sensitivity analyses complete ===\n")
