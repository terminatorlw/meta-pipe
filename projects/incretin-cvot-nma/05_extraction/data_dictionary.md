# Data Dictionary — Extraction Database

**File**: `extraction_db.csv`
**Date**: 2026-04-07
**Version**: 1.0

---

## Trial Identification

| Field | Type | Description |
|-------|------|-------------|
| `trial_name` | string | Name of the CVOT (e.g., LEADER, SELECT) |
| `drug` | string | Generic name of the intervention drug |
| `drug_class` | string | Drug classification (GLP-1 RA, GLP-1/GIP dual) |
| `comparator` | string | Comparator (Placebo or active drug name) |
| `comparator_class` | string | Comparator classification |

## Study Characteristics

| Field | Type | Description |
|-------|------|-------------|
| `n_total` | integer | Total randomized patients |
| `n_intervention` | integer | Patients in intervention arm |
| `n_control` | integer | Patients in control arm |
| `median_followup_years` | float | Median follow-up duration in years |
| `population` | string | Population description |
| `pct_t2dm` | float | % with type 2 diabetes mellitus |
| `pct_established_cvd` | float | % with established cardiovascular disease |
| `mean_age_years` | float | Mean age at baseline |
| `pct_female` | float | % female |
| `mean_bmi` | float | Mean BMI at baseline (kg/m2) |
| `mean_hba1c_pct` | float | Mean HbA1c at baseline (%) |

## Primary Outcome: 3-Point MACE

| Field | Type | Description |
|-------|------|-------------|
| `mace3p_events_int` | integer | 3p-MACE events in intervention arm |
| `mace3p_total_int` | integer | Total patients in intervention arm |
| `mace3p_events_ctrl` | integer | 3p-MACE events in control arm |
| `mace3p_total_ctrl` | integer | Total patients in control arm |
| `mace3p_hr` | float | Hazard ratio for 3p-MACE |
| `mace3p_hr_lci` | float | Lower 95% CI bound |
| `mace3p_hr_uci` | float | Upper 95% CI bound |

## Secondary Cardiovascular Outcomes (HR with 95% CI)

| Field Prefix | Outcome |
|-------------|---------|
| `cv_death_hr` | Cardiovascular death |
| `nonfatal_mi_hr` | Non-fatal myocardial infarction |
| `nonfatal_stroke_hr` | Non-fatal stroke |
| `allcause_death_hr` | All-cause mortality |
| `hf_hosp_hr` | Heart failure hospitalization |

Each with `_lci` (lower CI) and `_uci` (upper CI) suffixes.

## Metabolic Outcomes

| Field | Type | Description |
|-------|------|-------------|
| `weight_change_kg_int` | float | Weight change in intervention arm (kg) |
| `weight_change_kg_ctrl` | float | Weight change in control arm (kg) |
| `sbp_change_mmhg_int` | float | SBP change in intervention arm (mmHg) |
| `sbp_change_mmhg_ctrl` | float | SBP change in control arm (mmHg) |
| `hba1c_change_pct_int` | float | HbA1c change in intervention arm (%) |
| `hba1c_change_pct_ctrl` | float | HbA1c change in control arm (%) |

## Missing Data

- SOUL (2025) and SURPASS-CVOT (2025): Outcome data fields left blank pending full publication data extraction
- Empty cells indicate data not yet extracted or not reported in source publication

## Notes

- All HRs are from intention-to-treat analyses
- 3p-MACE = composite of CV death + non-fatal MI + non-fatal stroke
- For SELECT: HbA1c change is 0.0/0.0 as population is non-diabetic (baseline HbA1c 5.8%)
- For SURPASS-CVOT: comparator is dulaglutide (active), not placebo
- AMPLITUDE-O: 2:1 randomization (more patients in intervention arm)
