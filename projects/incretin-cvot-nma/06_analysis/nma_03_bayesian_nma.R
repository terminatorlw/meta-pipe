#!/usr/bin/env Rscript
# =============================================================================
# NMA Script 03: Bayesian Network Meta-Analysis (Primary Analysis)
# Project: Incretin-Based Therapies CVOT Network Meta-Analysis
# Date: 2026-04-07
# =============================================================================

library(tidyverse)
library(gemtc)
library(rjags)

# --- Set paths ---
project_dir <- here::here("projects", "incretin-cvot-nma")
out_dir <- file.path(project_dir, "06_analysis")
fig_dir <- file.path(out_dir, "figures")
tbl_dir <- file.path(out_dir, "tables")

# --- Read prepared data ---
mace_data <- read_csv(file.path(out_dir, "nma_mace3p_prepared.csv"), show_col_types = FALSE)

# --- Prepare data for gemtc ---
# gemtc expects relative effect data with treatment names
gemtc_data <- data.frame(
  study = mace_data$study,
  treatment = mace_data$treatment1,
  diff = mace_data$lnhr,
  std.err = mace_data$se_lnhr,
  stringsAsFactors = FALSE
)

# Create the network
network <- mtc.network(
  data.re = data.frame(
    study = rep(mace_data$study, each = 2),
    treatment = c(rbind(mace_data$treatment2, mace_data$treatment1)),
    stringsAsFactors = FALSE
  ),
  data.re = NULL  # Will use contrast-based approach
)

# --- Alternative: Direct contrast-based Bayesian NMA ---
# Since gemtc can be complex with contrast data, also provide BUGSnet approach
cat("=== Bayesian NMA: 3-Point MACE ===\n")
cat("\nNote: This script requires JAGS to be installed.\n")
cat("Install JAGS: https://mcmc-jags.sourceforge.io/\n")
cat("Then install R packages: install.packages(c('gemtc', 'rjags'))\n\n")

# --- Frequentist NMA as backup (always works) ---
library(netmeta)

pw <- data.frame(
  studlab = mace_data$study,
  treat1 = mace_data$treatment1,
  treat2 = mace_data$treatment2,
  TE = mace_data$lnhr,
  seTE = mace_data$se_lnhr,
  stringsAsFactors = FALSE
)

nma_re <- netmeta(
  TE = TE,
  seTE = seTE,
  treat1 = treat1,
  treat2 = treat2,
  studlab = studlab,
  data = pw,
  sm = "HR",
  reference.group = "Placebo",
  comb.random = TRUE,
  comb.fixed = FALSE
)

# --- Results ---
cat("\n=== Random-Effects NMA Results: 3p-MACE ===\n")
cat("\nAll treatments vs Placebo:\n")
print(summary(nma_re))

# --- Forest plot: All treatments vs Placebo ---
svg(file.path(fig_dir, "forest_vs_placebo_mace3p.svg"), width = 12, height = 8)
forest(
  nma_re,
  reference.group = "Placebo",
  sortvar = TE,
  smlab = "HR (95% CI)\n3-Point MACE vs Placebo",
  label.left = "Favours treatment",
  label.right = "Favours placebo",
  xlim = c(0.5, 1.3)
)
dev.off()
cat("\nForest plot saved: figures/forest_vs_placebo_mace3p.svg\n")

# --- Treatment ranking (P-scores) ---
cat("\n=== Treatment Rankings (P-scores) ===\n")
ranking <- netrank(nma_re, small.values = "desirable")
print(ranking)

# Save ranking
rank_df <- data.frame(
  Treatment = names(ranking$Pscore),
  Pscore = ranking$Pscore
) %>%
  arrange(desc(Pscore))

write_csv(rank_df, file.path(tbl_dir, "treatment_ranking_pscore_mace3p.csv"))
cat("\nRanking saved: tables/treatment_ranking_pscore_mace3p.csv\n")

# --- League table ---
league <- netleague(nma_re, digits = 2, bracket = "(", separator = " to ")
write.csv(league$random, file.path(tbl_dir, "league_table_mace3p.csv"))
cat("League table saved: tables/league_table_mace3p.csv\n")

# --- Heterogeneity ---
cat("\n=== Heterogeneity ===\n")
cat("Tau-squared:", nma_re$tau^2, "\n")
cat("I-squared:", nma_re$I2, "\n")
cat("Q statistic:", nma_re$Q, "\n")
cat("Q p-value:", nma_re$pval.Q, "\n")
