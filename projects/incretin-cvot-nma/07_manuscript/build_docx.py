#!/usr/bin/env python3
"""Assemble manuscript sections and convert to DOCX using pandoc."""

import pypandoc
from pathlib import Path

project_dir = Path("/home/user/meta-pipe/projects/incretin-cvot-nma")
ms_dir = project_dir / "07_manuscript"
out_file = ms_dir / "manuscript.docx"

# Title block
title_block = """---
title: "Comparative Cardiovascular Efficacy of Incretin-Based Therapies in Patients with Atherosclerotic Cardiovascular Disease: A Bayesian Network Meta-Analysis of Cardiovascular Outcomes Trials"
author: ""
date: "April 2026"
---

"""

# Section files in order
sections = [
    "00_abstract.md",
    "01_introduction.md",
    "02_methods.md",
    "03_results.md",
    "04_discussion.md",
    "tables_Table1_Study_Characteristics.md",
    "tables_Table2_League_Table.md",
    "tables_Table3_Rankings.md",
]

# Assemble combined markdown
combined = title_block
for section_file in sections:
    path = ms_dir / section_file
    if path.exists():
        content = path.read_text()
        # Remove trailing word count lines and horizontal rules at the end
        lines = content.rstrip().split("\n")
        cleaned_lines = []
        for line in lines:
            if line.startswith("**Word count**:"):
                continue
            cleaned_lines.append(line)
        # Remove trailing "---" separators
        while cleaned_lines and cleaned_lines[-1].strip() == "---":
            cleaned_lines.pop()
        combined += "\n".join(cleaned_lines) + "\n\n\\newpage\n\n"
    else:
        print(f"Warning: {section_file} not found")

# Write combined markdown
combined_md = ms_dir / "manuscript_combined.md"
combined_md.write_text(combined)
print(f"Combined markdown: {combined_md}")
print(f"Total characters: {len(combined):,}")

# Convert to DOCX
pypandoc.convert_text(
    combined,
    "docx",
    format="markdown",
    outputfile=str(out_file),
    extra_args=[
        "--standalone",
        "--toc",
        "--toc-depth=2",
    ],
)
print(f"DOCX created: {out_file}")
