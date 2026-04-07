# Search Strategy

## Incretin-Based Therapies CVOT Network Meta-Analysis

**Date**: 2026-04-07
**Version**: 1.0

---

## Search Overview

| Parameter | Value |
|-----------|-------|
| Databases | PubMed/MEDLINE, Embase, Cochrane CENTRAL, Scopus |
| Trial registries | ClinicalTrials.gov, WHO ICTRP |
| Date range | Inception to April 30, 2026 |
| Language | English only |
| Study design | Randomized controlled trials (CVOTs) |

---

## PubMed/MEDLINE Search Strategy

```
#1 Population (ASCVD / CV risk)
("cardiovascular diseases"[MeSH] OR "atherosclerosis"[MeSH] OR "myocardial infarction"[MeSH] OR "stroke"[MeSH] OR "peripheral arterial disease"[MeSH] OR "coronary artery disease"[MeSH] OR "heart failure"[MeSH] OR "cardiovascular disease*"[tiab] OR "atherosclerotic cardiovascular"[tiab] OR "ASCVD"[tiab] OR "coronary artery disease"[tiab] OR "myocardial infarction"[tiab] OR "stroke"[tiab] OR "peripheral arter*"[tiab] OR "cardiovascular risk"[tiab] OR "cardiovascular event*"[tiab])

#2 Intervention (Incretin-based therapies)
("glucagon-like peptide-1"[MeSH] OR "GLP-1 receptor agonist*"[tiab] OR "glucagon-like peptide"[tiab] OR "GLP-1"[tiab] OR "incretin"[tiab] OR "liraglutide"[tiab] OR "semaglutide"[tiab] OR "exenatide"[tiab] OR "dulaglutide"[tiab] OR "albiglutide"[tiab] OR "efpeglenatide"[tiab] OR "tirzepatide"[tiab] OR "lixisenatide"[tiab] OR "GIP receptor agonist*"[tiab] OR "dual agonist"[tiab] OR "twincretin"[tiab] OR "Ozempic"[tiab] OR "Wegovy"[tiab] OR "Victoza"[tiab] OR "Trulicity"[tiab] OR "Byetta"[tiab] OR "Bydureon"[tiab] OR "Mounjaro"[tiab] OR "Zepbound"[tiab] OR "Rybelsus"[tiab] OR "retatrutide"[tiab] OR "survodutide"[tiab])

#3 Outcome (Cardiovascular outcomes)
("major adverse cardiovascular event*"[tiab] OR "MACE"[tiab] OR "cardiovascular outcome*"[tiab] OR "cardiovascular death"[tiab] OR "cardiovascular mortality"[tiab] OR "myocardial infarction"[tiab] OR "stroke"[tiab] OR "heart failure"[tiab] OR "all-cause mortality"[tiab] OR "cardiovascular outcomes trial"[tiab] OR "CVOT"[tiab])

#4 Study Design Filter
("randomized controlled trial"[pt] OR "randomized"[tiab] OR "randomised"[tiab] OR "clinical trial"[pt] OR "controlled clinical trial"[pt] OR "placebo"[tiab] OR "trial"[tiab])

#5 Combined Search
#1 AND #2 AND #3 AND #4

Filters: English, Humans
```

---

## Embase Search Strategy (Ovid)

```
1. exp cardiovascular disease/ or exp atherosclerosis/ or exp heart infarction/ or exp cerebrovascular accident/ or exp peripheral artery disease/
2. (cardiovascular disease* or ASCVD or atherosclerotic or coronary artery disease or myocardial infarction or stroke or peripheral arter*).ti,ab.
3. 1 or 2
4. exp glucagon like peptide 1 receptor agonist/ or exp tirzepatide/ or exp liraglutide/ or exp semaglutide/ or exp dulaglutide/ or exp exenatide/ or exp albiglutide/ or exp efpeglenatide/
5. (GLP-1 receptor agonist* or glucagon-like peptide or incretin* or liraglutide or semaglutide or exenatide or dulaglutide or albiglutide or efpeglenatide or tirzepatide or GIP receptor agonist* or dual agonist or retatrutide or survodutide).ti,ab.
6. 4 or 5
7. (MACE or major adverse cardiovascular event* or cardiovascular outcome* or cardiovascular death or cardiovascular mortality or CVOT).ti,ab.
8. exp randomized controlled trial/ or randomized.ti,ab. or placebo.ti,ab.
9. 3 and 6 and 7 and 8
10. limit 9 to (english language and human)
```

---

## Cochrane CENTRAL Search Strategy

```
#1 MeSH descriptor: [Cardiovascular Diseases] explode all trees
#2 (cardiovascular disease* OR ASCVD OR myocardial infarction OR stroke OR peripheral arter*):ti,ab,kw
#3 #1 OR #2
#4 MeSH descriptor: [Glucagon-Like Peptide-1 Receptor] explode all trees
#5 (GLP-1 OR glucagon-like peptide OR incretin* OR liraglutide OR semaglutide OR exenatide OR dulaglutide OR albiglutide OR efpeglenatide OR tirzepatide):ti,ab,kw
#6 #4 OR #5
#7 (MACE OR major adverse cardiovascular event* OR cardiovascular outcome* OR CVOT):ti,ab,kw
#8 #3 AND #6 AND #7
#9 Limit to Trials
```

---

## Scopus Search Strategy

```
TITLE-ABS-KEY(
  ("cardiovascular disease*" OR "ASCVD" OR "myocardial infarction" OR "stroke" OR "peripheral arter*" OR "coronary artery disease")
  AND
  ("GLP-1" OR "glucagon-like peptide" OR "incretin" OR "liraglutide" OR "semaglutide" OR "exenatide" OR "dulaglutide" OR "albiglutide" OR "efpeglenatide" OR "tirzepatide" OR "GIP agonist")
  AND
  ("MACE" OR "cardiovascular outcome*" OR "cardiovascular death" OR "CVOT" OR "major adverse cardiovascular")
  AND
  ("randomized" OR "randomised" OR "trial" OR "placebo")
)
AND LANGUAGE(English)
```

---

## Supplementary Searches

### ClinicalTrials.gov
- Condition: Cardiovascular Diseases
- Intervention: GLP-1 OR semaglutide OR liraglutide OR tirzepatide OR dulaglutide OR exenatide OR albiglutide OR efpeglenatide
- Study type: Interventional
- Phase: Phase 3
- Status: Completed or Has Results

### WHO ICTRP
- Similar terms; cross-reference with ClinicalTrials.gov results

### Manual Search
- Reference lists of included studies and existing systematic reviews
- Conference proceedings: AHA, ESC, ADA, EASD (2020-2026)
- Contact manufacturers for unpublished CVOT data

---

## Expected Results

Based on the known CVOT landscape, we expect to identify:
- **Core CVOTs**: 10-11 trials (LEADER, SUSTAIN-6, EXSCEL, Harmony Outcomes, REWIND, PIONEER 6, AMPLITUDE-O, SELECT, SOUL, SURPASS-CVOT, possibly SURMOUNT-MMO)
- **Additional trials**: Possibly ELIXA (lixisenatide), though this may not meet ASCVD enrichment criteria
- **Total database hits**: Estimated 500-1,500 before deduplication

---

## Deduplication Strategy

1. Export results from all databases in RIS/BibTeX format
2. Import to reference manager (Zotero or EndNote)
3. Automated deduplication by DOI, PMID, title similarity
4. Manual review of potential duplicates
5. Document: total retrieved, duplicates removed, unique records

---

**Version**: 1.0
**Date**: 2026-04-07
