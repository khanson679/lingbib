#!/bin/sh
#
# A script to be run before a new entry is staged

# First, autogenerate keys for new.bib
bibtool -r scripts/keygen.rsc new.bib -o new.bib

# Then, merge new.bib with lingbib.bib
bibtool -r scripts/sanitize new.bib master-biblatex.bib -o master-biblatex.bib

# Next, generate a BibTeX-compliant entry

# And merge this with lingbib-bibtex.bib

# Then remove the new entries
rm new.bib

# Update macro and refs file
bibtool -r scripts/ref-extraction.rsc master-biblatex.bib -o MacrosAndRefs.txt

# Then stage the new changes
git add master-biblatex.bib