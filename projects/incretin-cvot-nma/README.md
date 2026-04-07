# Incretin-Based Therapies CVOT Network Meta-Analysis

Comparative cardiovascular efficacy of incretin-based therapies in patients with established ASCVD: A Bayesian network meta-analysis.

## Status: Stage 01 (Protocol) - Complete

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
│   ├── analysis-type-decision.md    # NMA candidate (Stage 1)
│   ├── pico.yaml                    # Full PICO framework
│   ├── eligibility.md               # Inclusion/exclusion criteria
│   ├── search_strategy.md           # 4-database search strategy
│   └── prospero_registration.md     # PROSPERO draft
├── 02_search/round-01/              # Literature search (pending)
├── 03_screening/round-01/           # Screening (pending)
├── 04_fulltext/                     # Full-text review (pending)
├── 05_extraction/                   # Data extraction (pending)
├── 06_analysis/                     # NMA scripts (pending)
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

## Next Steps

- [ ] Execute search strategy across 4 databases
- [ ] Deduplicate results
- [ ] Title/abstract screening
- [ ] Full-text screening
- [ ] Data extraction
- [ ] Bayesian NMA in R
- [ ] Manuscript preparation
