# lingbib

WARNING: This README is currently under construction, and may not accurately describe the current state of the project. Lingbib itself is also not ready for use quite yet, but if you're interested in contributing to the project then by all means try out what we have (you may need to look in the development branches), and please contact us if you'd like to get involved.

## Overview

This is a repository for open and collaborative management of a comprehensive linguistics bibliography.

Everyone who is a linguist and a user of (La)TeX eventually goes through the process of creating and maintaining their own `.bib` file for references. In our opinion, this is wasted effort. Instead, we could all contribute to the maintenance of a single, comprehensive bibliography file for linguistics. In addition to saving everyone some time, another advantages of this approach is that there will be, in principle, fewer errors in the database, since more people will be looking things over.

If you are interested in using the bibliography file, you might wish to read the sections below that detail [our approach to entering data into the databse][phil], [that comment on the unified style sheet for linguistics][ussl], and that detail [how to use the database in your `.tex` files][use].

If you are interested in contributing to the maintenance of the bibliographic database, you should also read the sections that detail [our approach to entering data into the databse][phil] and [that comment on the unified style sheet for linguistics][ussl] as well as the section on [contributing][contrib].

## Installation

In order to make full use of lingbib, you will need to do the following:
* Fork the lingbib repository on Github.
* Clone your forked repository on your local computer, setting the Github repository as the "origin" remote repository.
* Install the software dependencies for the lingbib helper program.
* Set the lingbib repository as the "upstream" remote repository.

You may be able to do what you need with lingbib using an alternative setup, but we encourage you to use this one regardless since having one common system makes it easier to troubleshoot problems. Additionally, contributors must use this setup in order for their contributions to be accepted.

### Fork the lingbib repository

To fork the lingbib repository, simply click the "fork" button at the top of the [lingbib Github page][lingbib]. You will need to create an account if you don't have one already.

### Clone the forked repository

To download a copy of the forked repository, open a terminal and enter `git clone <repository address> <target directory>`. This will set the Github repository you cloned from as "origin" by default. If you omit the target directory from this command, a directory called "lingbib" will be created and used by default.

See the official instructions for [installing Git][install-git] if you don't have it already.

### Install the software dependencies

The lingbib helper program currently works on Unix-like systems, including Debian/Ubuntu Linux and Mac OSX. You should also be able to get it to work under Cygwin on Windows (currently untested).

To use the lingbib program, you will need the following:
* Python 2.7 or 3.1+ (tested on 2.7, should work on 3.1-3.4, may also work on 2.6 and 3.0)
* Bibtool >= 2.60

Python is installed by default on Ubuntu and OSX. Enter `python --version` to check your version. On other systems, you may have to download and install it.

The author of Bibtool provides only the source code. Please see the [build instructions][build-bibtool]. Binaries are available through Ubuntu, but the version as of Ubuntu 15.04 is still older than 2.60, which contains a critical bug fix relevant to lingbib. If you really don't want to install from source, you can try [Homebrew][homebrew] on OSX (tested) or [Linuxbrew][linuxbrew] on Ubuntu (untested).
* Ubuntu: `brew install bib-tool`
* OSX:    `brew install bib-tool`

### Set the "upstream" repository

Once everything else is set up, open a terminal and navigate to your local repository, and enter `lingbib config defaults` to check the Git configuration and fill in any gaps, including the "upstream" repository.

## Support

If you have general comments or questions about lingbib, we have a Gitter chatroom where you can join our discussion about how to build and maintain lingbib. Feel free to also just drop by and say *hi*!

[![Join the chat at https://gitter.im/lingbib/lingbib](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/lingbib/lingbib?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

You can also report problems and bugs as well as suggest improvements via [GitHub issues][issue].

## Philosophy

In an attempt to make the database that we maintain usable for whatever purpose, we think it makes most sense to make the bibliographic entries as comprehensive as possible. All sylistic decisions should therefore be implemented at the level of the bibliography style files.

For example, if a style suggests that, for whatever reason, the editors of the work should not be included in the citation, this should be controlled by the `.bst` file (if one uses `natbib` and BibTeX) or the `.bbx` file (if one uses BibLaTeX and Biber). Regardless of the dictations of the particular style, the editors (if known) should be included in the `.bib` file. This allows the *same* `.bib` file to be used with a different style that might wish to have the editors included in the citation.

By including all known information in the database, the `.bib` file will hopefully be as useful and as portable as possible for whatever purpose one might need it for.

## Comments on the unified style sheet for linguistics

The [unified style sheet for linguistics][uss] was developed by [CELxJ, the Committee of Editors of Linguistics Journals][CELxJ].

**DETAILS TO COME**

## Using the `.bib` file

**DETAILS TO COME**

## Contributing

There are three ways that you can help contribute to this project, discussed in order of least work to most work.

### Suggest a missing entry

If you are not sure how to use `git` and GitHub to add an entry and don't have the time [to learn][pr], feel free to open an [issue on GitHub][issue]. If you have the time, please add as much of the bibliographic information as you can in the issue. Somebody on our team will, as soon as they have time, add the missing entry you suggest to the database and then close the issue that you opened.

### Submit a pull request

**DETAILS TO COME**

### Join the team

Currently, there are just two of us. As this project grows, we are sure to get more and more pull requests and have more and more issues opened. So, if you are interested in joining the team and helping us handle pull requests and issues, please contact [Adam and Kenneth][email]. We would greatly appreciate the help!

[lingbib]: https://github.com/lingbib/lingbib
[install-git]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[build-bibtool]: https://github.com/ge-ne/bibtool/blob/master/README
[homebrew]: http://brew.sh/
[linuxbrew]: https://github.com/Homebrew/linuxbrew
[phil]: https://github.com/lingbib/lingbib#philosophy
[ussl]: https://github.com/lingbib/lingbib#comments-on-the-unified-style-sheet-for-linguistics
[uss]: http://celxj.org/downloads/UnifiedStyleSheet.pdf
[CELxJ]: http://celxj.org/
[use]: https://github.com/lingbib/lingbib#using-the-bib-file
[contrib]: https://github.com/lingbib/lingbib#contributing
[pr]: https://github.com/lingbib/lingbib#submit-a-pull-request
[issue]: https://github.com/lingbib/lingbib/issues
[email]: mailto:adam.liter@gmail.com,khanson679@gmail.com
