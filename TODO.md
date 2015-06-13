# TODO

- Write a precommit `git` hook that uses BibTool to autogenerate keys and sanitize the database via the `.rsc` files.
- Test comprehensive entries with [*Semantics and Pragmatics*' BibLaTeX implementation of the unified style sheet][biblatex-unified]; suggest changes if necessary.
- Figure out a good way to make the database useable with BibTeX. The options would seem to be (i) find/write a script to convert a BibLaTeX database to a BibTex database and maintain the two alongside one another, (ii) reimplement Bridget Samuels' [`unified.bst`][unified-bst] so as to make use of the extra data fields in a BibLaTeX database, or (iii) require that each commit contains a BibLaTeX-compliant entry and a BibTeX-compliant entry.
- ~~Design a suggested workflow for maintaining a personal copy of the database that can be used with BibDesk/JabRef/etc. so users can pair PDFs with entries in their personal copy of the database.~~
- Finish the README file.
  - Add comments on the unified style sheet.
  - Add information on how to use the database.
	- Add information on how to use the `.bib` file in one's `.tex` files.
	- Add information on how to maintain a personal copy of the database alongside the main copy.
  - Add information on how to submit a pull request.

[biblatex-unified]: https://github.com/semprag/biblatex-sp-unified
[unified-bst]: http://celxj.org/downloads/unified.bst
