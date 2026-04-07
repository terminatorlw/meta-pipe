#!/usr/bin/env Rscript
# =============================================================================
# NMA Script 02: Network Geometry Plot
# Project: Incretin-Based Therapies CVOT Network Meta-Analysis
# Date: 2026-04-07
# =============================================================================

library(tidyverse)
library(netmeta)

# --- Set paths ---
project_dir <- here::here("projects", "incretin-cvot-nma")
out_dir <- file.path(project_dir, "06_analysis")
fig_dir <- file.path(out_dir, "figures")

# --- Read prepared data ---
mace_data <- read_csv(file.path(out_dir, "nma_mace3p_prepared.csv"), show_col_types = FALSE)

# --- Create netmeta-compatible pairwise data ---
pw <- data.frame(
  studlab = mace_data$study,
  treat1 = mace_data$treatment1,
  treat2 = mace_data$treatment2,
  TE = mace_data$lnhr,
  seTE = mace_data$se_lnhr,
  stringsAsFactors = FALSE
)

# --- Fit frequentist NMA (for network plot) ---
nma_freq <- netmeta(
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

# --- Network geometry plot ---
svg(file.path(fig_dir, "network_geometry.svg"), width = 10, height = 10)
netgraph(
  nma_freq,
  plastic = TRUE,
  thickness = "se.fixed",
  multiarm = FALSE,
  col = "#2C3E50",
  col.points = "#E74C3C",
  cex.points = 3,
  offset = 0.05,
  main = "Network Geometry: Incretin-Based Therapies CVOTs\n(3-point MACE)"
)
dev.off()

cat("Network plot saved: figures/network_geometry.svg\n")

# --- Print network summary ---
cat("\n=== Network Summary ===\n")
print(nma_freq)
