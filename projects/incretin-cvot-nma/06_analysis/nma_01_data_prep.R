#!/usr/bin/env Rscript
# =============================================================================
# NMA Script 01: Data Preparation
# Project: Incretin-Based Therapies CVOT Network Meta-Analysis
# Date: 2026-04-07
# =============================================================================

library(tidyverse)
library(meta)

# --- Set paths ---
project_dir <- here::here("projects", "incretin-cvot-nma")
data_dir <- file.path(project_dir, "05_extraction")
out_dir <- file.path(project_dir, "06_analysis")
fig_dir <- file.path(project_dir, "06_analysis", "figures")
tbl_dir <- file.path(project_dir, "06_analysis", "tables")

dir.create(fig_dir, recursive = TRUE, showWarnings = FALSE)
dir.create(tbl_dir, recursive = TRUE, showWarnings = FALSE)

# --- Read extraction data ---
extraction <- read_csv(file.path(data_dir, "extraction_db.csv"), show_col_types = FALSE)
contrast_data <- read_csv(file.path(data_dir, "nma_contrast_data.csv"), show_col_types = FALSE)

cat("=== Data Summary ===\n")
cat("Total trials in extraction:", nrow(extraction), "\n")
cat("Total contrasts:", nrow(contrast_data), "\n")
cat("Outcomes:", paste(unique(contrast_data$outcome), collapse = ", "), "\n")
cat("Treatments:", paste(unique(c(contrast_data$treatment1, contrast_data$treatment2)), collapse = ", "), "\n")

# --- Prepare NMA arm-based data for primary outcome (3p-MACE) ---
mace_data <- contrast_data %>%
  filter(outcome == "3p-MACE")

cat("\n=== Primary Outcome: 3p-MACE ===\n")
cat("Number of studies:", nrow(mace_data), "\n")
cat("Treatments vs Placebo:\n")
print(mace_data %>% select(study, treatment1, lnhr, se_lnhr))

# --- Create treatment network summary ---
treatments <- unique(c(mace_data$treatment1, mace_data$treatment2))
cat("\n=== Network Nodes ===\n")
cat("Number of treatments:", length(treatments), "\n")
for (t in sort(treatments)) {
  n_studies <- sum(mace_data$treatment1 == t | mace_data$treatment2 == t)
  cat(sprintf("  %s: %d studies\n", t, n_studies))
}

# --- Save prepared data ---
write_csv(mace_data, file.path(out_dir, "nma_mace3p_prepared.csv"))

# --- Table 1: Study characteristics ---
study_chars <- extraction %>%
  filter(!is.na(n_total)) %>%
  select(
    Trial = trial_name,
    Drug = drug,
    Class = drug_class,
    Comparator = comparator,
    N = n_total,
    `Follow-up (yr)` = median_followup_years,
    `Age (yr)` = mean_age_years,
    `Female (%)` = pct_female,
    `BMI` = mean_bmi,
    `HbA1c (%)` = mean_hba1c_pct,
    `T2DM (%)` = pct_t2dm,
    `Est. CVD (%)` = pct_established_cvd
  )

write_csv(study_chars, file.path(tbl_dir, "table1_study_characteristics.csv"))

cat("\n=== Data preparation complete ===\n")
cat("Output files:\n")
cat("  - nma_mace3p_prepared.csv\n")
cat("  - tables/table1_study_characteristics.csv\n")
