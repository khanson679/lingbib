# lingbib

This is a repository for collaborative, decentralized management of a comprehensive linguistics bibliography.

Everyone who is a linguist and a user of (La)TeX eventually goes through the process of creating and maintaining their own `.bib` file for references. In our opinion, this is wasted effort. Instead, we could all contribute to the maintenance of a single, comprehensive bibliography file for linguistics. In addition to saving everyone some time, another advantages of this approach is that there will be, in principle, fewer errors in the database, since more people will be looking things over.

If you are interested in using the bibliography file, you might wish to read the sections below that detail [our approach to entering data into the databse][phil], [that comment on the unified style sheet for linguistics][ussl], and that detail [how to use the database in your `.tex` files][use].

If you are interested in contributing to the maintenance of the bibliographic database, you should also read the sections that detail [our approach to entering data into the databse][phil] and [that comment on the unified style sheet for linguistics][ussl] as well as the section on [contributing][contrib].

## Philosophy

In an attempt to make the database that we maintain usable for whatever purpose, we think it makes most sense to make the bibliographic entries as comprehensive as possible. All sylistic decisions should therefore be implemented at the level of the bibliography style files.

For example, if a style suggests that, for whatever reason, the editors of the work should not be included in the citation, this should be controlled by the `.bst` file (if one uses `natbib` and BibTeX) or the `.bbx` file (if one uses BibLaTeX and Biber). Regardless of the dictations of the particular style, the editors (if known) should be included in the `.bib` file. This allows the *same* `.bib` file to be used with a different style that might wish to have the editors included in the citation.

By including all known information in the database, the `.bib` file will hopefully be as useful and as portable as possible for whatever purpose one might need it for.

## Comments on the unified style sheet for linguistics

The [unified style sheet for linguistics][uss] was developed by [CELxJ, the Committee of Editors of Linguistics Journals][CELxJ].

## Using the `.bib` file



## Contributing

There are three ways that you can help contribute to this project, discussed in order of least work to most work.

### Suggest a missing entry

If you are not sure how to use `git` and GitHub to add an entry and don't have the time [to learn][pr], feel free to open an [issue on GitHub][issue]. If you have the time, please add as much of the bibliographic information as you can in the issue. Somebody on our team will, as soon as they have time, add the missing entry you suggest to the database and then close the issue that you opened.

### Submit a pull request



### Join the team

Currently, there are just two of us. As this project grows, we are sure to get more and more pull requests and have more and more issues opened. So, if you are interested in joining the team and helping us handle pull requests and issues, please contact [Adam and Kenneth][email]. We would greatly appreciate the help!

[phil]: https://github.com/lingbib/lingbib#philosophy
[ussl]: https://github.com/lingbib/lingbib#comments-on-the-unified-style-sheet-for-linguistics
[uss]: http://celxj.org/downloads/UnifiedStyleSheet.pdf
[CELxJ]: http://celxj.org/
[use]: https://github.com/lingbib/lingbib#using-the-bib-file
[contrib]: https://github.com/lingbib/lingbib#contributing
[pr]: https://github.com/lingbib/lingbib#submit-a-pull-request
[issue]: https://github.com/lingbib/lingbib/issues
[email]: mailto:adam.liter@gmail.com;khanson679@gmail.com
