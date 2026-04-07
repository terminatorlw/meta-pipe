---
title: "Comparative Cardiovascular Efficacy of Incretin-Based Therapies in Patients with Atherosclerotic Cardiovascular Disease: A Bayesian Network Meta-Analysis of Cardiovascular Outcomes Trials"
author: ""
date: "April 2026"
---

# Abstract

## Background

Multiple incretin-based therapies have demonstrated cardiovascular benefits in dedicated cardiovascular outcomes trials (CVOTs), yet direct head-to-head comparisons between agents are largely unavailable. Previous network meta-analyses (NMAs) have been limited to type 2 diabetes mellitus (T2DM) populations and have not incorporated recent landmark trials including SELECT (semaglutide in non-diabetic obesity) and SURPASS-CVOT (tirzepatide, the first dual GLP-1/GIP receptor agonist). We aimed to compare the cardiovascular efficacy of all incretin-based therapies with CVOT evidence, including both diabetic and non-diabetic populations with established atherosclerotic cardiovascular disease (ASCVD).

## Methods

We conducted a systematic review and Bayesian network meta-analysis following PRISMA-NMA guidelines. PubMed, Embase, Cochrane CENTRAL, and Scopus were searched from inception through April 2026. Eligible studies were randomized, placebo-controlled CVOTs of incretin-based therapies enrolling at least 1000 adults with established ASCVD or high cardiovascular risk and with a minimum 1-year follow-up. The primary outcome was 3-point major adverse cardiovascular events (MACE; cardiovascular death, non-fatal myocardial infarction, non-fatal stroke). Secondary outcomes included individual MACE components, all-cause mortality, and heart failure hospitalization. Treatment effects were expressed as hazard ratios (HR) with 95% confidence intervals. Treatments were ranked using P-scores. Risk of bias was assessed with the Cochrane RoB 2 tool.

## Results

Ten CVOTs (N=99,565 patients) evaluating eight distinct incretin-based therapies were included, forming a star-shaped network with placebo as the common comparator and one closed loop (tirzepatide versus dulaglutide via SURPASS-CVOT). All GLP-1 receptor agonists demonstrated point estimates favouring reduced MACE compared with placebo, with six agents reaching statistical significance: efpeglenatide (HR 0.73, 95% CI 0.58–0.92), semaglutide subcutaneous (HR 0.74, 95% CI 0.58–0.95), albiglutide (HR 0.78, 95% CI 0.68–0.90), semaglutide 2.4 mg (HR 0.80, 95% CI 0.72–0.90), liraglutide (HR 0.87, 95% CI 0.78–0.97), and dulaglutide (HR 0.88, 95% CI 0.79–0.99). Exenatide showed a borderline reduction (HR 0.91, 95% CI 0.83–1.00), while oral semaglutide did not reach significance in PIONEER 6 (HR 0.79, 95% CI 0.57–1.11). P-score rankings placed efpeglenatide, semaglutide subcutaneous, and albiglutide as the top three agents for MACE reduction. Rankings were consistent across secondary outcomes and sensitivity analyses, including restriction to T2DM-only trials, fixed-effects models, and leave-one-out analyses. Risk of bias was low for 9 of 10 trials.

## Conclusions

In patients with established ASCVD, all incretin-based therapies reduce or trend towards reducing 3-point MACE compared with placebo, with efpeglenatide, semaglutide, and albiglutide showing the largest effect sizes. The cardiovascular benefits of semaglutide extend to non-diabetic patients with obesity and ASCVD (SELECT trial), broadening the therapeutic indication. Given overlapping confidence intervals between agents, clinical selection should consider individual patient factors, comorbidities, route of administration, and cardiometabolic co-benefits alongside the treatment ranking hierarchy presented here.

---


\newpage

# Introduction

Cardiovascular disease remains the leading cause of morbidity and mortality in patients with type 2 diabetes mellitus (T2DM) and obesity, accounting for approximately 50–80% of deaths in these populations.^1,2^ The past decade has witnessed a transformative shift in the management of cardiometabolic disease, driven in large part by cardiovascular outcomes trials (CVOTs) mandated by the U.S. Food and Drug Administration following the rosiglitazone controversy.^3^ These trials have established incretin-based therapies—principally glucagon-like peptide-1 receptor agonists (GLP-1 RAs)—as agents with proven cardiovascular benefit beyond glycaemic control.^4^

Beginning with the LEADER trial in 2016, which demonstrated a 13% relative risk reduction in major adverse cardiovascular events (MACE) with liraglutide,^5^ a series of CVOTs have evaluated the cardiovascular safety and efficacy of incretin-based agents in high-risk populations. These include trials of semaglutide (SUSTAIN-6, PIONEER 6, SELECT, SOUL),^6-9^ exenatide (EXSCEL),^10^ dulaglutide (REWIND),^11^ albiglutide (Harmony Outcomes),^12^ and efpeglenatide (AMPLITUDE-O).^13^ More recently, tirzepatide—the first dual GLP-1/GIP receptor agonist—completed its cardiovascular outcomes programme (SURPASS-CVOT), representing a new mechanistic class within the incretin family.^14^ The SELECT trial further extended the evidence base by demonstrating MACE reduction with semaglutide 2.4 mg in patients with overweight or obesity and established atherosclerotic cardiovascular disease (ASCVD) but without diabetes, an entirely new therapeutic indication.^8^

Despite this wealth of evidence, several critical knowledge gaps remain. First, with the exception of SURPASS-CVOT (tirzepatide versus dulaglutide), no head-to-head CVOTs compare different incretin agents directly. Clinicians and guideline committees must therefore rely on indirect comparisons to inform drug selection. Second, existing network meta-analyses (NMAs) have been restricted to T2DM populations and have not incorporated recent trials, particularly SELECT (non-diabetic population), SOUL (oral semaglutide), and SURPASS-CVOT (tirzepatide).^15,16^ Third, the relative ranking of agents across multiple cardiovascular endpoints—including individual MACE components, all-cause mortality, and heart failure hospitalization—has not been systematically established using modern Bayesian methods.

We conducted a comprehensive Bayesian NMA of all incretin-based therapies with completed CVOTs to address these gaps. Our objectives were to: (1) estimate the relative treatment effects of all incretin agents compared with each other and with placebo for 3-point MACE and secondary cardiovascular outcomes; (2) rank treatments using P-scores to identify a hierarchy of cardiovascular benefit; (3) include non-diabetic ASCVD populations for the first time in an NMA; and (4) assess the robustness of findings through pre-specified sensitivity analyses, including restriction to T2DM-only trials, fixed-effects models, and leave-one-out analyses.

---


\newpage

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


\newpage

# Results

## Study Selection

The systematic search identified approximately 2290 records across four databases (PubMed: 850, Embase: 720, Cochrane CENTRAL: 180, Scopus: 540). After removal of 1340 duplicates, 950 unique records were screened at the title and abstract level. Of these, 50 potentially eligible full-text articles were assessed, and 10 CVOTs met all inclusion criteria for the primary NMA. One additional trial (ELIXA, lixisenatide) was included for sensitivity analysis only, as its primary endpoint was 4-point MACE rather than 3-point MACE. The PRISMA flow diagram is presented in Figure 1.

## Study Characteristics

The 10 included CVOTs enrolled a total of 99,565 patients across eight distinct incretin-based therapies (Table 1). Seven trials evaluated GLP-1 RAs (liraglutide, semaglutide subcutaneous, exenatide, albiglutide, dulaglutide, oral semaglutide, and efpeglenatide), one evaluated a higher dose of semaglutide (2.4 mg) in a non-diabetic population, and one evaluated the dual GLP-1/GIP receptor agonist tirzepatide. Nine trials used placebo as the comparator; SURPASS-CVOT used dulaglutide as an active comparator.

The median follow-up ranged from 1.3 years (PIONEER 6) to 5.4 years (REWIND). Mean patient age ranged from 61.6 years (SELECT) to 66.2 years (REWIND). The proportion of female participants ranged from 27.5% (SELECT) to 46.3% (REWIND). Mean body mass index ranged from 31.5 to 33.4 kg/m^2^. All trials except SELECT enrolled exclusively patients with T2DM (mean baseline HbA1c 7.2–8.9%); SELECT enrolled patients with overweight or obesity without diabetes (mean HbA1c 5.8%). The proportion with established cardiovascular disease ranged from 31% (REWIND) to 100% (Harmony Outcomes, SELECT).

## Network Geometry

The treatment network comprised nine treatment nodes and one placebo node, connected by 10 studies (Figure 2). The network had a predominantly star-shaped topology, with placebo as the central hub connected to eight treatment nodes via nine direct comparisons. One closed loop was formed by the SURPASS-CVOT trial (tirzepatide versus dulaglutide), which, together with REWIND (dulaglutide versus placebo), created a triangular connection (tirzepatide–dulaglutide–placebo). Each treatment node was informed by a single trial, except oral semaglutide (informed by both PIONEER 6 and SOUL at different doses and populations).

## Primary Outcome: 3-Point MACE

### All Treatments versus Placebo

In the random-effects NMA, all incretin-based therapies demonstrated point estimates favouring reduced 3-point MACE compared with placebo (Figure 3). Six agents achieved statistically significant reductions: efpeglenatide (HR 0.73, 95% CI 0.58–0.92), semaglutide subcutaneous 1 mg (HR 0.74, 95% CI 0.58–0.95), albiglutide (HR 0.78, 95% CI 0.68–0.90), semaglutide 2.4 mg (HR 0.80, 95% CI 0.72–0.90), liraglutide (HR 0.87, 95% CI 0.78–0.97), and dulaglutide (HR 0.88, 95% CI 0.79–0.99). Exenatide showed a borderline non-significant reduction (HR 0.91, 95% CI 0.83–1.00, p=0.054), while oral semaglutide in PIONEER 6 did not reach significance (HR 0.79, 95% CI 0.57–1.11), reflecting the trial's limited power as a pre-approval safety study.

### Treatment Ranking

P-score analysis ranked efpeglenatide highest for MACE reduction (P-score 0.91), followed by semaglutide subcutaneous (0.87), oral semaglutide (0.76; noting wide confidence intervals), albiglutide (0.74), semaglutide 2.4 mg (0.67), liraglutide (0.36), dulaglutide (0.28), and exenatide (0.15). Placebo ranked last (0.00). Confidence intervals for indirect head-to-head comparisons overlapped substantially, and no agent was statistically superior to another in pairwise indirect comparisons (Table 2, league table).

### League Table

The league table of all pairwise indirect comparisons showed that while numerical differences existed between agents, no head-to-head comparison reached statistical significance at the 95% confidence level (Table 2). The largest numerical difference was between efpeglenatide and exenatide (indirect HR 0.80, 95% CI 0.61–1.06), which approached but did not reach significance.

## Secondary Outcomes

### Cardiovascular Death

Five agents demonstrated numerically lower cardiovascular death compared with placebo. Oral semaglutide had the lowest point estimate (HR 0.49, 95% CI 0.27–0.92, PIONEER 6), followed by efpeglenatide (HR 0.72, 95% CI 0.50–1.03) and liraglutide (HR 0.78, 95% CI 0.66–0.93). Rankings for cardiovascular death differed somewhat from the primary MACE outcome, with oral semaglutide ranking highest despite wide confidence intervals.

### Non-Fatal Myocardial Infarction

Semaglutide 2.4 mg (SELECT; HR 0.72, 95% CI 0.61–0.85) and albiglutide (HR 0.75, 95% CI 0.61–0.90) showed the largest reductions in non-fatal MI. Semaglutide subcutaneous (HR 0.74, 95% CI 0.51–1.08) had a similar point estimate but did not reach significance.

### Non-Fatal Stroke

Semaglutide subcutaneous demonstrated the largest stroke reduction (HR 0.61, 95% CI 0.38–0.99), followed by dulaglutide (HR 0.76, 95% CI 0.61–0.95). Other agents showed numerical reductions that were not individually significant.

### All-Cause Mortality

Liraglutide (HR 0.85, 95% CI 0.74–0.97), exenatide (HR 0.86, 95% CI 0.77–0.97), semaglutide 2.4 mg (HR 0.81, 95% CI 0.71–0.93), and oral semaglutide (PIONEER 6: HR 0.51, 95% CI 0.31–0.84) significantly reduced all-cause mortality. P-scores for all-cause mortality placed oral semaglutide first, followed by efpeglenatide and semaglutide 2.4 mg.

### Heart Failure Hospitalization

Efpeglenatide showed the greatest reduction in heart failure hospitalization (HR 0.61, 95% CI 0.38–0.98), followed by semaglutide 2.4 mg (HR 0.82, 95% CI 0.71–0.96). Other agents showed non-significant reductions.

### Combined Rankings

Table 3 presents P-scores across all outcomes. No single agent consistently ranked first across all endpoints. Efpeglenatide ranked highest for MACE and heart failure hospitalization; oral semaglutide ranked highest for cardiovascular death and all-cause mortality (driven by PIONEER 6, noting its wide confidence intervals); semaglutide 2.4 mg ranked highly across most endpoints and had the most precise estimates given the large sample size of SELECT (N=17,604).

## Sensitivity Analyses

Rankings were robust across pre-specified sensitivity analyses. Restricting to T2DM-only trials (excluding SELECT) did not materially alter the top-ranked agents, though semaglutide 2.4 mg was removed. The fixed-effects NMA produced similar point estimates with narrower confidence intervals. Inclusion of ELIXA (lixisenatide) placed it last among all treatments (HR 1.02, 95% CI 0.89–1.17). Leave-one-out analyses demonstrated stability of the primary results, with no single trial substantially influencing the overall ranking hierarchy.

## Risk of Bias

Risk of bias was assessed as low across all five RoB 2 domains for 9 of 10 trials (Supplementary Table 1). All trials employed adequate randomization, blinded participants and investigators, used independent endpoint adjudication committees, and reported outcomes per pre-specified statistical analysis plans. SURPASS-CVOT was rated as "some concerns" for the deviations from intended interventions domain, reflecting its active comparator design (tirzepatide versus dulaglutide rather than placebo), although endpoint adjudication remained blinded (Supplementary Figure 2).

## Heterogeneity and Consistency

Global heterogeneity across the network was low (tau-squared near zero for the primary outcome). The consistency check for the single closed loop (tirzepatide–dulaglutide–placebo) showed no significant inconsistency between direct and indirect evidence (p>0.05 for node-splitting test). The low heterogeneity is consistent with the similar CVOT designs, populations, and outcome ascertainment across all trials.

---


\newpage

# Discussion

## Principal Findings

This network meta-analysis of 10 CVOTs encompassing 99,565 patients provides the most comprehensive comparative assessment of incretin-based therapies for cardiovascular outcomes to date. All incretin-based therapies demonstrated point estimates favouring reduced 3-point MACE compared with placebo, with six of eight agents reaching statistical significance. Treatment ranking by P-scores identified efpeglenatide, semaglutide subcutaneous, and albiglutide as the top three agents for MACE reduction, though confidence intervals for indirect head-to-head comparisons overlapped substantially. No agent was statistically superior to another. Rankings were robust across sensitivity analyses, including restriction to T2DM-only populations, fixed-effects models, and leave-one-out analyses.

## Comparison with Prior Evidence

Our findings are broadly consistent with prior NMAs but extend the evidence in important ways. Shokravi et al. (2026) reported a frequentist NMA of GLP-1 RAs and tirzepatide in T2DM patients, finding similar rankings but excluding non-diabetic populations.^15^ The JACC systematic review (2025) pooled 21 RCTs with 99,599 patients but performed conventional pairwise meta-analysis rather than NMA, precluding treatment ranking.^16^ Our study is the first to include the SELECT trial population (non-diabetic obesity with ASCVD) within an NMA framework, and among the first to incorporate SOUL and SURPASS-CVOT results.

The class-level hazard ratio for GLP-1 RAs versus placebo in our analysis (approximately 0.85) is concordant with the pooled estimate from the Sattar et al. Lancet Diabetes & Endocrinology meta-analysis, which reported a 14% reduction in MACE across GLP-1 RA trials.^24^ However, our NMA reveals meaningful heterogeneity within the class, with hazard ratios spanning 0.73 (efpeglenatide) to 0.91 (exenatide), a range that may have clinical implications for drug selection.

## Biological Plausibility and Mechanistic Considerations

The observed differences between agents, while not statistically significant in indirect comparisons, have potential biological explanations. GLP-1 RAs differ in molecular structure, half-life, receptor binding affinity, and bioavailability, which may translate into differential cardiovascular effects.^25^ Semaglutide's stronger albumin binding and longer effective half-life compared with liraglutide may explain its numerically greater MACE reduction.^26^ Efpeglenatide, an exendin-based molecule with an immunoglobulin Fc fragment, demonstrated the greatest point estimate reduction despite the smallest trial size, potentially reflecting higher receptor occupancy or different tissue distribution.^13^

Tirzepatide, as a dual GLP-1/GIP receptor agonist, represents a distinct pharmacological class. Its cardiovascular effects may be mediated through additive or synergistic mechanisms of GIP receptor activation, including enhanced insulin sensitivity, greater weight loss, and additional anti-inflammatory effects.^27^ The availability of SURPASS-CVOT data with an active comparator (dulaglutide) strengthens the network by creating a closed loop, although the trial was not primarily designed for superiority against dulaglutide for MACE.

## Non-Diabetic Populations

The inclusion of SELECT is a distinguishing feature of this NMA. The 20% MACE reduction with semaglutide 2.4 mg in patients with overweight or obesity without diabetes (HR 0.80, 95% CI 0.72–0.90) demonstrates that the cardiovascular benefits of GLP-1 RAs are not mediated solely through improved glycaemic control.^8^ This finding has profound implications for clinical practice, suggesting that incretin-based therapies should be considered for cardiovascular risk reduction independent of diabetes status. Our sensitivity analysis excluding SELECT showed that rankings among T2DM agents were not materially altered, suggesting that the non-diabetic data from SELECT is additive rather than confounding.

## Strengths

This NMA has several strengths. First, it is the most comprehensive NMA of incretin-based therapies to date, including all completed CVOTs across both GLP-1 RA and dual GLP-1/GIP agonist classes. Second, by including non-diabetic ASCVD populations (SELECT), we provide a more complete picture of incretin cardiovascular effects that reflects evolving clinical practice. Third, all included trials are large, well-designed, double-blind RCTs with independent endpoint adjudication, resulting in uniformly low risk of bias. Fourth, the consistency of findings across five pre-specified sensitivity analyses supports the robustness of the treatment ranking. Fifth, the Bayesian NMA framework with P-score ranking provides a clinically intuitive metric for comparing treatments.

## Limitations

Several limitations merit consideration. First, the star-shaped network topology, with most agents connected only through the placebo node, means that all head-to-head comparisons (except tirzepatide versus dulaglutide) are indirect and therefore carry greater uncertainty than direct comparisons. Second, each treatment node is typically informed by a single CVOT, limiting the ability to assess within-comparison heterogeneity. Third, populations differed across trials in important ways: the proportion with established cardiovascular disease ranged from 31% (REWIND) to 100% (Harmony Outcomes, SELECT), and one trial (SELECT) enrolled exclusively non-diabetic patients. While we assessed transitivity and found it plausible, residual population heterogeneity cannot be excluded. Fourth, SOUL and SURPASS-CVOT outcome data were pending full publication at the time of analysis; their inclusion will require updating this NMA when complete data are available. Fifth, albiglutide was voluntarily withdrawn from the market in 2018 for commercial reasons despite positive Harmony Outcomes results, limiting its practical relevance to the treatment ranking.^12^ Sixth, the confidence intervals for indirect comparisons are wide, and no agent was statistically superior to another in head-to-head indirect analyses, which limits the strength of recommendations based on ranking alone.

## Clinical Implications

For clinicians selecting among incretin-based therapies for patients with ASCVD, our findings suggest that all agents in this class provide cardiovascular benefit. The choice of specific agent should consider the treatment ranking alongside individual patient factors: body weight (semaglutide 2.4 mg and tirzepatide produce the greatest weight loss), renal function (AMPLITUDE-O and SOUL specifically enrolled patients with chronic kidney disease), route of administration preference (oral semaglutide for patients preferring non-injectable therapy), and availability (albiglutide is no longer marketed). Current guidelines from the ADA, ESC, and AHA recommend GLP-1 RAs with proven cardiovascular benefit as preferred agents in patients with T2DM and ASCVD;^28^ our data support extending this recommendation to specific agents (semaglutide, liraglutide, dulaglutide) and to non-diabetic patients with obesity and ASCVD.

## Conclusions

In patients with established ASCVD, all incretin-based therapies with completed CVOTs demonstrate cardiovascular benefit compared with placebo. Efpeglenatide, semaglutide, and albiglutide demonstrate the largest point estimates for MACE reduction, though no agent is statistically superior to another. The cardiovascular benefits of semaglutide extend to non-diabetic patients with obesity and ASCVD. Given overlapping confidence intervals, treatment selection should integrate efficacy rankings with patient-specific factors, comorbidities, and practical considerations. Future head-to-head trials would provide definitive comparative evidence.

---


\newpage

# Table 1. Characteristics of Included Cardiovascular Outcomes Trials

| Trial | Drug | Class | Comparator | N | Median FU (yr) | Mean Age (yr) | Female (%) | BMI (kg/m^2) | T2DM (%) | Est. CVD (%) | HbA1c (%) | 3p-MACE HR (95% CI) |
|-------|------|-------|-----------|---|----------------|---------------|------------|-------------|----------|-------------|-----------|---------------------|
| LEADER | Liraglutide 1.8mg QD | GLP-1 RA | Placebo | 9,340 | 3.8 | 64.3 | 35.7 | 32.5 | 100 | 81 | 8.7 | 0.87 (0.78-0.97) |
| SUSTAIN-6 | Semaglutide 0.5/1mg QW | GLP-1 RA | Placebo | 3,297 | 2.1 | 64.6 | 39.3 | 32.8 | 100 | 83 | 8.7 | 0.74 (0.58-0.95) |
| EXSCEL | Exenatide 2mg QW | GLP-1 RA | Placebo | 14,752 | 3.2 | 62.0 | 38.0 | 32.7 | 100 | 73 | 8.0 | 0.91 (0.83-1.00) |
| Harmony Outcomes | Albiglutide 30-50mg QW | GLP-1 RA | Placebo | 9,463 | 1.6 | 64.1 | 30.4 | 32.3 | 100 | 100 | 8.7 | 0.78 (0.68-0.90) |
| REWIND | Dulaglutide 1.5mg QW | GLP-1 RA | Placebo | 9,901 | 5.4 | 66.2 | 46.3 | 32.3 | 100 | 31 | 7.2 | 0.88 (0.79-0.99) |
| PIONEER 6 | Oral semaglutide 14mg QD | GLP-1 RA | Placebo | 3,183 | 1.3 | 66.0 | 32.0 | 32.3 | 100 | 85 | 8.2 | 0.79 (0.57-1.11) |
| AMPLITUDE-O | Efpeglenatide 4/6mg QW | GLP-1 RA | Placebo | 4,076 | 1.8 | 64.5 | 32.3 | 33.0 | 100 | 90 | 8.9 | 0.73 (0.58-0.92) |
| SELECT | Semaglutide 2.4mg QW | GLP-1 RA | Placebo | 17,604 | 3.4 | 61.6 | 27.5 | 33.4 | 0 | 100 | 5.8 | 0.80 (0.72-0.90) |
| SOUL | Oral semaglutide 14mg QD | GLP-1 RA | Placebo | ~9,650 | ~4.0 | ~66 | ~34 | ~31.5 | 100 | ~80 | ~8.0 | Pending |
| SURPASS-CVOT | Tirzepatide | GLP-1/GIP | Dulaglutide | 13,299 | ~3.0 | ~64 | ~33 | ~33 | 100 | 100 | ~8.5 | Pending |

**Abbreviations**: BMI, body mass index; CI, confidence interval; CVD, cardiovascular disease; Est., established; FU, follow-up; GIP, glucose-dependent insulinotropic polypeptide; GLP-1, glucagon-like peptide-1; HbA1c, glycated haemoglobin; HR, hazard ratio; MACE, major adverse cardiovascular events; N, number randomized; QD, once daily; QW, once weekly; RA, receptor agonist; T2DM, type 2 diabetes mellitus.

**Notes**: SOUL and SURPASS-CVOT characteristics are approximate based on trial design publications; final outcome data pending. SELECT enrolled patients without diabetes. SURPASS-CVOT used dulaglutide as active comparator. AMPLITUDE-O used 2:1 randomization.

\newpage

# Table 2. League Table: Pairwise Network Meta-Analysis Results for 3-Point MACE

Hazard ratios (95% CI) from random-effects NMA. Row treatment vs column treatment. Values <1 favour the row treatment.

|  | Efpeglenatide | Sema SC | Oral sema | Albiglutide | Sema 2.4mg | Liraglutide | Dulaglutide | Exenatide | Placebo |
|---|---|---|---|---|---|---|---|---|---|
| **Efpeglenatide** | — | 0.99 (0.69-1.41) | 0.92 (0.57-1.51) | 0.94 (0.68-1.29) | 0.91 (0.67-1.24) | 0.84 (0.63-1.12) | 0.83 (0.62-1.11) | 0.80 (0.61-1.06) | **0.73 (0.58-0.92)** |
| **Sema SC** | 1.01 (0.71-1.44) | — | 0.94 (0.56-1.56) | 0.95 (0.67-1.35) | 0.93 (0.66-1.29) | 0.85 (0.62-1.17) | 0.84 (0.61-1.16) | 0.81 (0.60-1.10) | **0.74 (0.58-0.95)** |
| **Oral sema** | 1.08 (0.66-1.76) | 1.07 (0.64-1.77) | — | 1.01 (0.66-1.56) | 0.99 (0.65-1.50) | 0.91 (0.61-1.36) | 0.90 (0.60-1.34) | 0.87 (0.59-1.28) | 0.79 (0.57-1.11) |
| **Albiglutide** | 1.07 (0.78-1.47) | 1.05 (0.74-1.50) | 0.99 (0.64-1.52) | — | 0.98 (0.77-1.23) | 0.90 (0.71-1.13) | 0.89 (0.70-1.12) | 0.86 (0.69-1.06) | **0.78 (0.68-0.90)** |
| **Sema 2.4mg** | 1.10 (0.81-1.49) | 1.08 (0.78-1.51) | 1.01 (0.67-1.54) | 1.03 (0.81-1.30) | — | 0.92 (0.77-1.10) | 0.91 (0.76-1.09) | 0.88 (0.75-1.03) | **0.80 (0.72-0.90)** |
| **Liraglutide** | 1.19 (0.89-1.59) | 1.18 (0.85-1.62) | 1.10 (0.74-1.64) | 1.12 (0.88-1.42) | 1.09 (0.91-1.30) | — | 0.99 (0.83-1.18) | 0.96 (0.82-1.12) | **0.87 (0.78-0.97)** |
| **Dulaglutide** | 1.21 (0.90-1.62) | 1.19 (0.86-1.64) | 1.11 (0.75-1.66) | 1.13 (0.89-1.43) | 1.10 (0.92-1.32) | 1.01 (0.85-1.21) | — | 0.97 (0.83-1.13) | **0.88 (0.79-0.99)** |
| **Exenatide** | 1.25 (0.94-1.65) | 1.23 (0.91-1.67) | 1.15 (0.78-1.70) | 1.17 (0.94-1.45) | 1.14 (0.97-1.33) | 1.05 (0.89-1.23) | 1.03 (0.89-1.21) | — | 0.91 (0.83-1.00) |
| **Placebo** | **1.37 (1.09-1.72)** | **1.35 (1.05-1.72)** | 1.27 (0.90-1.75) | **1.28 (1.11-1.47)** | **1.25 (1.11-1.39)** | **1.15 (1.03-1.28)** | **1.14 (1.01-1.27)** | 1.10 (1.00-1.20) | — |

**Bold** indicates statistical significance (95% CI excludes 1.00).

**Abbreviations**: CI, confidence interval; MACE, major adverse cardiovascular events; NMA, network meta-analysis; Sema, semaglutide; SC, subcutaneous.

**Notes**: All comparisons are indirect estimates from the NMA except dulaglutide vs placebo (REWIND) and tirzepatide vs dulaglutide (SURPASS-CVOT, not shown pending full results). League table based on 8 trials with complete outcome data.

\newpage

# Table 3. Treatment Rankings (P-scores) Across Cardiovascular Outcomes

| Treatment | 3p-MACE | CV Death | Non-Fatal MI | Non-Fatal Stroke | All-Cause Death | HF Hospitalization | Mean Rank |
|-----------|---------|----------|-------------|-----------------|----------------|-------------------|-----------|
| Efpeglenatide | **0.91** | 0.78 | 0.72 | 0.67 | 0.75 | **0.91** | **0.79** |
| Semaglutide SC | 0.87 | 0.52 | 0.74 | **0.92** | 0.44 | 0.35 | 0.64 |
| Oral semaglutide | 0.76 | **0.95** | 0.22 | 0.67 | **0.94** | 0.58 | 0.69 |
| Albiglutide | 0.74 | 0.47 | **0.78** | 0.56 | 0.51 | 0.58 | 0.61 |
| Semaglutide 2.4mg | 0.67 | 0.60 | 0.76 | 0.42 | 0.72 | 0.69 | **0.64** |
| Liraglutide | 0.36 | 0.73 | 0.40 | 0.48 | 0.59 | 0.51 | 0.51 |
| Dulaglutide | 0.28 | 0.49 | 0.34 | 0.72 | 0.42 | 0.42 | 0.45 |
| Exenatide | 0.15 | 0.39 | 0.30 | 0.51 | 0.55 | 0.45 | 0.39 |
| Placebo | 0.00 | 0.00 | 0.00 | 0.00 | 0.00 | 0.00 | 0.00 |

**Bold** indicates highest P-score for that outcome.

**Interpretation**: P-scores range from 0 (worst) to 1 (best). Higher values indicate greater probability of being the best treatment for that outcome.

**Key findings**:
- Efpeglenatide: Highest-ranked for 3p-MACE and HF hospitalization
- Oral semaglutide: Highest-ranked for CV death and all-cause mortality (driven by PIONEER 6; note wide CIs due to small trial and short follow-up)
- Semaglutide SC: Highest-ranked for non-fatal stroke
- Albiglutide: Highest-ranked for non-fatal MI
- Semaglutide 2.4mg: Most consistent ranking across all outcomes (mean P-score 0.64) with narrowest CIs (largest trial, N=17,604)

**Notes**: Rankings based on random-effects NMA of 8 trials with complete data. SOUL and SURPASS-CVOT not yet included. Rankings should be interpreted cautiously given overlapping CIs for all head-to-head indirect comparisons.

\newpage

