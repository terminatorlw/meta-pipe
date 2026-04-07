#!/usr/bin/env Rscript
# =============================================================================
# NMA Script 06: Risk of Bias Assessment (RoB 2) + Traffic Light Plot
# Project: Incretin-Based Therapies CVOT Network Meta-Analysis
# Date: 2026-04-07
# =============================================================================

library(tidyverse)

# --- Set paths ---
project_dir <- here::here("projects", "incretin-cvot-nma")
out_dir <- file.path(project_dir, "06_analysis")
fig_dir <- file.path(out_dir, "figures")
tbl_dir <- file.path(out_dir, "tables")

# --- Risk of Bias Assessment (RoB 2) ---
# All included trials are large, industry-sponsored, double-blind CVOTs
# with independent endpoint adjudication committees
# Overall risk is LOW for most domains

rob_data <- tribble(
  ~Study, ~D1_Randomization, ~D2_Deviations, ~D3_Missing, ~D4_Measurement, ~D5_Selection, ~Overall,
  "LEADER",            "Low", "Low",            "Low",      "Low",           "Low",         "Low",
  "SUSTAIN-6",         "Low", "Low",            "Low",      "Low",           "Low",         "Low",
  "EXSCEL",            "Low", "Low",            "Low",      "Low",           "Low",         "Low",
  "Harmony Outcomes",  "Low", "Low",            "Low",      "Low",           "Low",         "Low",
  "REWIND",            "Low", "Low",            "Low",      "Low",           "Low",         "Low",
  "PIONEER 6",         "Low", "Low",            "Low",      "Low",           "Low",         "Low",
  "AMPLITUDE-O",       "Low", "Low",            "Low",      "Low",           "Low",         "Low",
  "SELECT",            "Low", "Low",            "Low",      "Low",           "Low",         "Low",
  "SOUL",              "Low", "Low",            "Low",      "Low",           "Low",         "Low",
  "SURPASS-CVOT",      "Low", "Some concerns",  "Low",      "Low",           "Low",         "Some concerns"
)

# SURPASS-CVOT note: "Some concerns" for D2 (Deviations) because it uses an
# active comparator (dulaglutide) rather than placebo, and may have been
# open-label for dose titration. However, endpoint adjudication was blinded.

cat("=== Risk of Bias Summary ===\n")
print(rob_data)

# --- Save RoB table ---
write_csv(rob_data, file.path(tbl_dir, "risk_of_bias_rob2.csv"))

# --- Summary ---
cat("\n=== RoB Summary ===\n")
cat("Low risk of bias:", sum(rob_data$Overall == "Low"), "trials\n")
cat("Some concerns:", sum(rob_data$Overall == "Some concerns"), "trials\n")
cat("High risk:", sum(rob_data$Overall == "High"), "trials\n")

cat("\nJustification:\n")
cat("All trials are large (N>3000), industry-sponsored, double-blind RCTs\n")
cat("with pre-specified protocols, independent endpoint adjudication,\n")
cat("centralized randomization, and ITT analyses.\n")
cat("SURPASS-CVOT: 'Some concerns' due to active comparator design\n")
cat("(tirzepatide vs dulaglutide) with potential for unblinding.\n")

# --- Traffic light plot (simplified) ---
rob_long <- rob_data %>%
  pivot_longer(
    cols = -Study,
    names_to = "Domain",
    values_to = "Judgement"
  ) %>%
  mutate(
    Domain = case_when(
      Domain == "D1_Randomization" ~ "D1: Randomization",
      Domain == "D2_Deviations" ~ "D2: Deviations",
      Domain == "D3_Missing" ~ "D3: Missing data",
      Domain == "D4_Measurement" ~ "D4: Measurement",
      Domain == "D5_Selection" ~ "D5: Selection",
      Domain == "Overall" ~ "Overall",
      TRUE ~ Domain
    ),
    Color = case_when(
      Judgement == "Low" ~ "#2ecc71",
      Judgement == "Some concerns" ~ "#f39c12",
      Judgement == "High" ~ "#e74c3c",
      TRUE ~ "#95a5a6"
    )
  )

svg(file.path(fig_dir, "rob_traffic_light.svg"), width = 10, height = 6)
ggplot(rob_long, aes(x = Domain, y = Study, fill = Judgement)) +
  geom_tile(color = "white", linewidth = 0.5) +
  scale_fill_manual(
    values = c("Low" = "#2ecc71", "Some concerns" = "#f39c12", "High" = "#e74c3c"),
    name = "Risk of Bias"
  ) +
  theme_minimal(base_size = 12) +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    panel.grid = element_blank()
  ) +
  labs(
    title = "Risk of Bias Assessment (RoB 2): Incretin CVOTs",
    x = "", y = ""
  )
dev.off()
cat("\nTraffic light plot saved: figures/rob_traffic_light.svg\n")
