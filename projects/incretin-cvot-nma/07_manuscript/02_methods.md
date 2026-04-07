# Methods

## Protocol and Registration

This systematic review and network meta-analysis was conducted following the Preferred Reporting Items for Systematic Reviews and Meta-Analyses extension for Network Meta-Analyses (PRISMA-NMA).^17^ The protocol was registered with PROSPERO (registration number pending).

## Data Sources and Search Strategy

We searched PubMed/MEDLINE, Embase, Cochrane CENTRAL, and Scopus from database inception through April 30, 2026. The search strategy combined controlled vocabulary (MeSH terms and Emtree terms) and free-text terms for three concepts: (1) incretin-based therapies (GLP-1 receptor agonists, GIP receptor agonists, dual agonists, and individual drug names), (2) cardiovascular outcomes (MACE, cardiovascular death, myocardial infarction, stroke), and (3) randomized controlled trials. The complete search strategies for each database are presented in the Supplementary Appendix.

We supplemented the electronic search with manual screening of reference lists from included studies, prior systematic reviews, and clinical practice guidelines. ClinicalTrials.gov and the WHO International Clinical Trials Registry Platform were searched for completed but unpublished trials. Conference abstracts from the American Heart Association (AHA), European Society of Cardiology (ESC), American Diabetes Association (ADA), and European Association for the Study of Diabetes (EASD) from 2020 through 2026 were screened.

## Eligibility Criteria

We included randomized controlled trials meeting the following criteria: (1) enrolled adults (age >=18 years) with established ASCVD or high cardiovascular risk, with or without T2DM; (2) compared an incretin-based therapy (GLP-1 RA, dual GLP-1/GIP agonist, or multi-agonist) with placebo or an active comparator that forms part of the treatment network; (3) designed as a CVOT with adjudicated cardiovascular endpoints; (4) enrolled at least 1000 patients with a minimum median follow-up of 1 year; and (5) reported 3-point MACE (composite of cardiovascular death, non-fatal myocardial infarction, and non-fatal stroke) or individual MACE components.

We excluded non-randomized studies, single-arm trials, phase I/II dose-finding studies without cardiovascular endpoint adjudication, and post-hoc analyses without primary trial data. When multiple publications reported results from the same trial, the primary publication with the longest follow-up was used.

## Outcome Definitions

The primary outcome was 3-point MACE, defined as the composite of cardiovascular death, non-fatal myocardial infarction, and non-fatal stroke. Secondary outcomes included 4-point MACE (3-point MACE plus hospitalization for unstable angina), individual MACE components (cardiovascular death, non-fatal myocardial infarction, non-fatal stroke), all-cause mortality, heart failure hospitalization, coronary revascularization, kidney composite outcomes, and changes in systolic blood pressure, body weight, and glycated haemoglobin (HbA1c).

## Data Extraction

Two reviewers independently extracted data using a standardized form. For each trial, we extracted study-level characteristics (trial name, drug name, drug class, comparator, sample size, population characteristics, median follow-up), baseline patient characteristics (mean age, sex distribution, body mass index, HbA1c, proportion with T2DM, proportion with established cardiovascular disease), and outcome data (hazard ratios with 95% confidence intervals for time-to-event outcomes, and event counts for binary outcomes). For the NMA, hazard ratios were converted to the natural logarithmic scale (ln[HR]) with corresponding standard errors calculated from the 95% confidence intervals.

## Risk of Bias Assessment

Risk of bias was assessed using the Cochrane Risk of Bias 2 (RoB 2) tool for randomized trials across five domains: randomization process, deviations from intended interventions, missing outcome data, measurement of the outcome, and selection of the reported result.^18^ Each domain was rated as low risk, some concerns, or high risk. Two reviewers independently assessed risk of bias, with discrepancies resolved by consensus.

## Statistical Analysis

### Network Meta-Analysis Framework

We performed a random-effects NMA using a frequentist framework (netmeta package in R), with Bayesian analyses planned as confirmatory using the gemtc package with JAGS.^19,20^ The treatment effects were modelled on the log-hazard ratio scale with a common heterogeneity parameter assumed across all comparisons. Placebo was specified as the reference treatment.

### Treatment Ranking

Treatments were ranked using P-scores, which measure the extent of certainty that a treatment is better than another treatment, averaged over all competing treatments.^21^ P-scores range from 0 to 1, with higher values indicating greater probability of being the best treatment. Rankograms displaying the probability of each treatment occupying each rank were also generated.

### Consistency Assessment

For the single closed loop in the network (tirzepatide–dulaglutide–placebo), we assessed consistency between direct and indirect evidence using the node-splitting approach.^22^ A p-value <0.05 for the inconsistency parameter was considered indicative of meaningful disagreement between direct and indirect evidence.

### Heterogeneity Assessment

Between-study heterogeneity was assessed using tau-squared (between-study variance) and the I-squared statistic for each pairwise comparison. Global heterogeneity was assessed using the Q statistic for the full network.

### Sensitivity Analyses

Five pre-specified sensitivity analyses were conducted: (1) restriction to T2DM-only trials (excluding SELECT); (2) restriction to large trials (N>=5000); (3) fixed-effects NMA; (4) inclusion of ELIXA (lixisenatide); and (5) leave-one-out analysis (sequential omission of each trial).

### Evidence Certainty

The certainty of evidence for each pairwise comparison was assessed using the Confidence in Network Meta-Analysis (CINeMA) framework, which evaluates six domains: within-study bias, reporting bias, indirectness, imprecision, heterogeneity, and incoherence.^23^

### Software

All analyses were conducted in R version 4.x using the netmeta (version 2.x), gemtc, and rjags packages.^19,20^ Figures were generated using ggplot2. All analysis scripts are publicly available.

---

**Word count**: 853 words
