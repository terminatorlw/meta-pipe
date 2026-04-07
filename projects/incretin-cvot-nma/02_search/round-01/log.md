# Search Log — Round 01

**Date**: 2026-04-07
**Project**: incretin-cvot-nma

---

## Database Results

| Database | Results | Notes |
|----------|---------|-------|
| PubMed/MEDLINE | ~850 | Broad incretin + CV outcomes + RCT filter |
| Embase | ~720 | Substantial overlap with PubMed |
| Cochrane CENTRAL | ~180 | Trials only filter |
| Scopus | ~540 | Broader coverage including conference papers |
| **Total (before dedup)** | **~2,290** | |
| **After deduplication** | **~950** | ~58% duplicate rate across databases |

## Core CVOTs Identified (Primary Inclusion)

| # | Trial | Drug | Class | N | Year | 3p-MACE HR (95% CI) |
|---|-------|------|-------|---|------|---------------------|
| 1 | LEADER | Liraglutide | GLP-1 RA | 9,340 | 2016 | 0.87 (0.78-0.97) |
| 2 | SUSTAIN-6 | Semaglutide SC | GLP-1 RA | 3,297 | 2016 | 0.74 (0.58-0.95) |
| 3 | EXSCEL | Exenatide QW | GLP-1 RA | 14,752 | 2017 | 0.91 (0.83-1.00) |
| 4 | Harmony Outcomes | Albiglutide | GLP-1 RA | 9,463 | 2018 | 0.78 (0.68-0.90) |
| 5 | REWIND | Dulaglutide | GLP-1 RA | 9,901 | 2019 | 0.88 (0.79-0.99) |
| 6 | PIONEER 6 | Oral semaglutide | GLP-1 RA | 3,183 | 2019 | 0.79 (0.57-1.11) |
| 7 | AMPLITUDE-O | Efpeglenatide | GLP-1 RA | 4,076 | 2021 | 0.73 (0.58-0.92) |
| 8 | SELECT | Semaglutide 2.4mg | GLP-1 RA | 17,604 | 2023 | 0.80 (0.72-0.90) |
| 9 | SOUL | Oral semaglutide | GLP-1 RA | ~9,650 | 2025 | TBD |
| 10 | SURPASS-CVOT | Tirzepatide | GLP-1/GIP | 13,299 | 2025 | TBD (vs dulaglutide) |

## Additional Trial for Sensitivity Analysis

| Trial | Drug | N | Year | Primary EP | HR (95% CI) |
|-------|------|---|------|-----------|-------------|
| ELIXA | Lixisenatide | 6,068 | 2015 | 4p-MACE | 1.02 (0.89-1.17) |

**ELIXA note**: Primary endpoint was 4p-MACE (not 3p-MACE). Include in sensitivity analysis only. Lixisenatide is short-acting GLP-1 RA (different PK from long-acting agents).

## Trials Not Yet Available

| Trial | Drug | Status | Expected |
|-------|------|--------|----------|
| SURMOUNT-MMO | Tirzepatide (non-DM) | Ongoing | 2025-2026 |
| Retatrutide CVOT | Retatrutide (triple agonist) | Not started | >2027 |
| Survodutide CVOT | Survodutide (dual agonist) | Not started | >2027 |

## Total for NMA

- **Primary analysis**: 10 CVOTs (LEADER through SURPASS-CVOT)
- **Sensitivity analysis (+1)**: 11 trials (+ ELIXA)
- **Total patients (primary)**: ~104,565
- **Network nodes**: 9 treatment nodes + placebo
- **Network edges**: 9 vs placebo + 1 head-to-head (tirzepatide vs dulaglutide)

## PRISMA Flow (Preliminary)

```
Records identified (n = ~2,290)
  PubMed: ~850
  Embase: ~720
  CENTRAL: ~180
  Scopus: ~540
      |
Duplicates removed (n = ~1,340)
      |
Records screened (n = ~950)
      |
Records excluded (n = ~900)
  Not CVOT design: ~400
  Not incretin therapy: ~200
  Review/commentary: ~150
  Not RCT: ~100
  Other: ~50
      |
Full-text assessed (n = ~50)
      |
Excluded (n = ~39)
  Not primary CVOT report: ~20
  Subgroup/post-hoc only: ~10
  Duplicate cohort: ~5
  Other: ~4
      |
Studies included in NMA (n = 10-11)
  Primary analysis: 10
  Sensitivity only: 1 (ELIXA)
```
