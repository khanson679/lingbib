#!/bin/sh
#
# A script to be run before a new entry is staged

# First, autogenerate keys for new.bib
bibtool -r scripts/keygen.rsc new.bib -o new.bib

# Then, merge new.bib with lingbib.bib
bibtool -r scripts/sanitize new.bib lingbib.bib -o lingbib.bib

# Next, generate a BibTeX-compliant entry

# And merge this with lingbib-bibtex.bib

# Then remove the new entries
rm new.bib

# Then stage the new changes
git add lingbib.bib