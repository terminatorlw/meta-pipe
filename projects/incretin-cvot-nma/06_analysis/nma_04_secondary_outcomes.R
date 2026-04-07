#!/usr/bin/env Rscript
# =============================================================================
# NMA Script 04: Secondary Outcomes NMA
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

# --- Read contrast data ---
contrast_data <- read_csv(
  file.path(project_dir, "05_extraction", "nma_contrast_data.csv"),
  show_col_types = FALSE
)

# --- Define secondary outcomes to analyze ---
secondary_outcomes <- c("CV_death", "nonfatal_MI", "nonfatal_stroke",
                        "allcause_death", "HF_hosp")

outcome_labels <- c(
  "CV_death" = "Cardiovascular Death",
  "nonfatal_MI" = "Non-Fatal MI",
  "nonfatal_stroke" = "Non-Fatal Stroke",
  "allcause_death" = "All-Cause Mortality",
  "HF_hosp" = "HF Hospitalization"
)

# --- Run NMA for each secondary outcome ---
results_list <- list()

for (outcome_name in secondary_outcomes) {
  cat(sprintf("\n=== %s ===\n", outcome_labels[outcome_name]))

  outcome_data <- contrast_data %>%
    filter(outcome == outcome_name)

  if (nrow(outcome_data) < 3) {
    cat("Insufficient studies, skipping.\n")
    next
  }

  pw <- data.frame(
    studlab = outcome_data$study,
    treat1 = outcome_data$treatment1,
    treat2 = outcome_data$treatment2,
    TE = outcome_data$lnhr,
    seTE = outcome_data$se_lnhr,
    stringsAsFactors = FALSE
  )

  nma_fit <- tryCatch(
    netmeta(
      TE = TE, seTE = seTE,
      treat1 = treat1, treat2 = treat2,
      studlab = studlab, data = pw,
      sm = "HR", reference.group = "Placebo",
      comb.random = TRUE, comb.fixed = FALSE
    ),
    error = function(e) {
      cat("Error:", e$message, "\n")
      return(NULL)
    }
  )

  if (is.null(nma_fit)) next

  results_list[[outcome_name]] <- nma_fit

  # Forest plot
  svg_file <- file.path(fig_dir, sprintf("forest_vs_placebo_%s.svg", outcome_name))
  svg(svg_file, width = 12, height = 8)
  forest(
    nma_fit,
    reference.group = "Placebo",
    sortvar = TE,
    smlab = sprintf("HR (95%% CI)\n%s vs Placebo", outcome_labels[outcome_name]),
    label.left = "Favours treatment",
    label.right = "Favours placebo",
    xlim = c(0.3, 1.8)
  )
  dev.off()
  cat(sprintf("Forest plot saved: %s\n", basename(svg_file)))

  # P-score ranking
  ranking <- netrank(nma_fit, small.values = "desirable")
  rank_df <- data.frame(
    Treatment = names(ranking$Pscore),
    Pscore = round(ranking$Pscore, 3),
    Outcome = outcome_labels[outcome_name]
  ) %>%
    arrange(desc(Pscore))

  write_csv(rank_df, file.path(tbl_dir, sprintf("ranking_%s.csv", outcome_name)))

  # League table
  league <- netleague(nma_fit, digits = 2, bracket = "(", separator = " to ")
  write.csv(league$random, file.path(tbl_dir, sprintf("league_%s.csv", outcome_name)))
}

# --- Combined ranking table across all outcomes ---
cat("\n=== Combined Rankings Across Outcomes ===\n")
all_rankings <- list()

for (outcome_name in names(results_list)) {
  nma_fit <- results_list[[outcome_name]]
  ranking <- netrank(nma_fit, small.values = "desirable")
  all_rankings[[outcome_name]] <- data.frame(
    Treatment = names(ranking$Pscore),
    Pscore = round(ranking$Pscore, 3)
  )
  names(all_rankings[[outcome_name]])[2] <- outcome_labels[outcome_name]
}

if (length(all_rankings) > 0) {
  combined <- all_rankings[[1]]
  for (i in 2:length(all_rankings)) {
    combined <- full_join(combined, all_rankings[[i]], by = "Treatment")
  }
  combined <- combined %>% arrange(Treatment)
  print(combined)
  write_csv(combined, file.path(tbl_dir, "combined_rankings_all_outcomes.csv"))
  cat("\nCombined rankings saved: tables/combined_rankings_all_outcomes.csv\n")
}

cat("\n=== Secondary outcomes analysis complete ===\n")
