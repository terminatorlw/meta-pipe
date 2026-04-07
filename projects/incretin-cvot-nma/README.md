# Incretin-Based Therapies CVOT Network Meta-Analysis

Comparative cardiovascular efficacy of incretin-based therapies in patients with established ASCVD: A Bayesian network meta-analysis.

## Status: Stage 06 (Analysis) - R scripts ready, pending execution

## Research Question

In patients with established ASCVD, how do different incretin-based therapies compare in reducing 3-point MACE versus placebo, and what is their relative ranking?

## Key Details

| Parameter | Value |
|-----------|-------|
| Analysis type | Bayesian NMA (random-effects) |
| Population | ASCVD (with or without T2DM) |
| Interventions | 8-9 incretin agents (GLP-1 RAs + tirzepatide) |
| Comparator | Placebo (common node) |
| Primary outcome | 3-point MACE |
| Expected trials | 10-11 CVOTs, N>100,000 |
| Feasibility | GO (15/16) |

## Project Structure

```
incretin-cvot-nma/
├── 00_overview/
│   └── feasibility-assessment.md    # Feasibility: GO (15/16)
├── 01_protocol/
│   ├── analysis-type-decision.md    # NMA CONFIRMED
│   ├── pico.yaml                    # Full PICO framework
│   ├── eligibility.md               # Inclusion/exclusion criteria
│   ├── search_strategy.md           # 4-database search strategy
│   └── prospero_registration.md     # PROSPERO draft
├── 02_search/round-01/
│   ├── queries.txt                  # Search queries (4 databases)
│   ├── results.bib                  # 11 CVOTs identified
│   ├── dedupe.bib                   # Deduplicated bibliography
│   └── log.md                       # Search log with PRISMA counts
├── 03_screening/round-01/
│   ├── screening_decisions.csv      # 10 included + 1 sensitivity
│   └── screening_summary.md         # Screening summary
├── 04_fulltext/                     # N/A (all CVOTs are known)
├── 05_extraction/
│   ├── extraction_db.csv            # Full data extraction (8 trials)
│   ├── nma_contrast_data.csv        # NMA-ready contrast data (ln(HR) + SE)
│   └── data_dictionary.md           # Variable definitions
├── 06_analysis/
│   ├── nma_01_data_prep.R           # Data preparation + Table 1
│   ├── nma_02_network_plot.R        # Network geometry plot
│   ├── nma_03_bayesian_nma.R        # Primary NMA + forest + ranking
│   ├── nma_04_secondary_outcomes.R  # CV death, MI, stroke, etc.
│   ├── nma_05_sensitivity.R         # 5 sensitivity analyses
│   └── nma_06_rob_assessment.R      # RoB 2 + traffic light plot
├── 07_manuscript/                   # Manuscript (pending)
├── 08_reviews/                      # Peer review (pending)
├── 09_qa/                           # Quality assurance (pending)
├── TOPIC.txt                        # Research question
└── README.md                        # This file
```

## Network Structure

```
Liraglutide ----[LEADER]---- Placebo ----[SUSTAIN-6]---- Semaglutide SC
                                |
Exenatide ----[EXSCEL]--------+--------[Harmony]---- Albiglutide
                                |
Dulaglutide ----[REWIND]------+--------[PIONEER 6]---- Oral Semaglutide
       |                        |
  [SURPASS-CVOT]               +--------[AMPLITUDE-O]---- Efpeglenatide
       |                        |
  Tirzepatide                  +--------[SELECT]---- Semaglutide 2.4mg
                                |
                               +--------[SOUL]---- Oral Semaglutide (high-dose)
```

## Completed Stages

- [x] Stage 00: Feasibility assessment (GO, 15/16)
- [x] Stage 01: Protocol (PICO, eligibility, search strategy, PROSPERO draft)
- [x] Stage 02: Literature search (4 databases, 11 CVOTs identified)
- [x] Stage 03: Screening (10 included in primary NMA, 1 sensitivity)
- [x] Stage 05: Data extraction (8 trials with complete data, 2 pending 2025 results)
- [x] Stage 06: R analysis scripts (6 scripts ready)

## Next Steps

- [ ] Execute R scripts (requires R with netmeta, gemtc, rjags packages)
- [ ] Extract SOUL and SURPASS-CVOT outcome data when published
- [ ] Run Bayesian NMA with JAGS
- [ ] Complete manuscript preparation (Stage 07)
- [ ] GRADE/CINeMA assessment
- [ ] PROSPERO registration
