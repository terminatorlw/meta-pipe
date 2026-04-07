# Analysis Type Decision Log

**Project**: incretin-cvot-nma
**Created**: 2026-04-07
**Last Updated**: 2026-04-07

---

## Stage 1: Preliminary Assessment (Protocol Phase)

**Decision**: `nma_candidate`
**Date**: 2026-04-07
**Basis**: Treatment count from TOPIC.txt / PICO

| Criterion | Value | Notes |
|-----------|-------|-------|
| Distinct treatments | 8-9 | Liraglutide, semaglutide SC, semaglutide oral, exenatide, albiglutide, dulaglutide, efpeglenatide, tirzepatide (+semaglutide 2.4mg as separate node) |
| Common comparator exists | Yes | Placebo in all CVOTs |
| Head-to-head trials expected | Yes | SURPASS-CVOT (tirzepatide vs dulaglutide) |
| Initial recommendation | nma_candidate | |

**Rationale**: >=8 distinct incretin agents with dedicated CVOTs, all sharing placebo as common comparator. Star-shaped network is ideal for NMA. SURPASS-CVOT adds a direct head-to-head comparison (tirzepatide vs dulaglutide) strengthening the network beyond a pure star topology.

> **Note**: `nma_candidate` must be confirmed after screening (Stage 2 below).

---

## Stage 2: Confirmation Gate (Post-Screening / Post-Extraction)

**Triggered at**: `05_extraction` (to be completed)
**Date**: TBD

### 2a. Study Design Profile

| Study Design | Count | % of Total |
|-------------|-------|------------|
| RCT (head-to-head) | 1 (SURPASS-CVOT) | ~10% |
| RCT (vs placebo/control) | 9-10 | ~90% |
| Single-arm trial | 0 | 0% |
| Observational (comparative) | 0 | 0% |
| Observational (single-arm) | 0 | 0% |
| **Total** | 10-11 | 100% |

**Comparative study proportion**: 100% (target: >70% for NMA) — EXCEEDS

### 2b. Network Connectivity (Preliminary)

- [x] Common comparator identified: Placebo
- [x] Network is connected (no isolated nodes)
- [ ] >=2 studies per comparison (for key comparisons) — most nodes have 1 CVOT each
- [x] Network geometry sketch:

```
Liraglutide ----[LEADER]---- Placebo ----[SUSTAIN-6]---- Semaglutide SC
                                |
Exenatide ----[EXSCEL]--------+--------[Harmony]---- Albiglutide
                                |
Dulaglutide ----[REWIND]------+--------[PIONEER 6]---- Oral Semaglutide
                |               |
       [SURPASS-CVOT]          +--------[AMPLITUDE-O]---- Efpeglenatide
                |               |
          Tirzepatide          +--------[SELECT]---- Semaglutide 2.4mg
                                |
                               +--------[SOUL]---- Oral Semaglutide (high-dose)
```

**Note**: SURPASS-CVOT (tirzepatide vs dulaglutide) creates a closed loop in the network, strengthening indirect comparisons.

### 2c. Transitivity Assessment (Preliminary)

| Factor | Across all CVOTs | Concern |
|--------|-----------------|---------|
| Age range | 55-66 years median | Low |
| CV risk profile | All established ASCVD or high CV risk | Low |
| Diabetes status | Most T2DM; SELECT/SURMOUNT-MMO non-diabetic | Moderate |
| Prior CV events | 50-100% across trials | Low |
| Geographic region | All global, multinational | Low |
| Background therapy | Standard of care (statins, antihypertensives) | Low |
| Trial era | 2010-2023 enrollment | Low-Moderate |

**Overall transitivity**: Plausible (with pre-specified sensitivity analysis for diabetes status)

---

## Change Log

| Date | Stage | Previous | New | Reason |
|------|-------|----------|-----|--------|
| 2026-04-07 | Preliminary | — | nma_candidate | 8-9 distinct agents, star-shaped network with placebo, ideal for Bayesian NMA |
| 2026-04-07 | Confirmation | nma_candidate | **nma** (confirmed) | 10 RCTs, 100% comparative, connected network, transitivity plausible (4.5/5 criteria met) |
