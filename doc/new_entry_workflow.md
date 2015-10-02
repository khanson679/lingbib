# simple version
`bibtool -r bibtool/keygen.rsc new.bib -o new.bib`
`bibtool -r bibtool/sanitize new.bib lingbib-master.bib -o lingbib-master.bib`
`rm new.bib`
`git add lingbib-master.bib`

# extended version
create file called new.bib with the new entry/ies to be added.
run `bibtool -r bibtool/keygen.rsc new.bib -o new.bib`
run `bibtool -r bibtool/sanitize.rsc new.bib -o new.bib`
run `cp lingbib-master.bib lingbib-master.bib.bak`
run `bibtool -r bibtool/biblatex.rsc -r bibtool/format.rsc new.bib lingbib-master.bib -o lingbib-master.bib`
run `rm new.bib lingbib-master.bib.bak`
run `git add lingbib-master.bib`
