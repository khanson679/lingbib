# Lingbib

## Overview

Every linguist who is a user of (La)TeX currently has to create and maintain their own `.bib` file for references. It would be much more efficient if we could all contribute to and use a single, comprehensive bibliographic database for the field of linguistics. In addition to saving time for everyone, a collaborative approach would also help maximize the accuracy of the data.

This is what Lingbib is. Lingbib includes such a database, provided in BibLaTeX format (and in the future, the old BibTeX format), along with a system for contributing to the database, syncing it with a personal database for use with JabRef, BibDesk, and similar tools, and backing up the personal database. We do this using `git` repositories, but you don't need to know `git` in order to use Lingbib as all of this is coordinated using a simple command line helper program.

All users and contributors should read the remainder of this README. Additional documentation is available on the [Lingbib wiki][wiki].

## Warning

This README is currently under construction, and may not accurately describe the current state of the project. Lingbib itself is also not ready for use quite yet, but if you're interested in contributing to the project then by all means try out what we have (you may need to look in the development branches), and [please contact us if you'd like to get involved][email].

## Getting started

If all you want to do is use entries from the database as is, you can simply tell BibLaTeX to access the main `.bib` file over the internet. (See: [Using a remote bibliography file][remote-bibfile])

If you need to modify the repository in any way, or if you with to contribute to Lingbib, you will need to setup a local repository on your computer according to the [installation instructions][install] below. In the future we may create a web interface for new entry submissions, at the very least, but at the moment this is the only option.

## Installation

In order to make full use of Lingbib, you will need to do the following:
* Fork the Lingbib repository on Github.
* Clone your forked repository on your local computer, setting the Github repository as the "origin" remote repository.
* Install the software dependencies for the `lingbib` helper program.
* Set the Lingbib repository as the "upstream" remote repository.

You may be able to do what you need with Lingbib using an alternative setup, but we encourage you to use this one regardless since having one common system makes it easier to troubleshoot problems. Additionally, contributors must use this setup in order for their contributions to be accepted.

### Fork the Lingbib repository

To fork the Lingbib repository, simply click the "fork" button at the top of the [Lingbib Github page][lingbib]. You will need to create an account if you don't have one already.

### Clone the forked repository

To download a copy of the forked repository, open a terminal and enter `git clone <repository address> <target directory>`. This will set the Github repository you cloned from as "origin" by default. If you omit the target directory from this command, a directory called "lingbib" will be created and used by default.

See the official instructions for [installing Git][install-git] if you don't have it already.

### Install the software dependencies

The `lingbib` helper program currently works on Unix-like systems, including Debian/Ubuntu Linux and Mac OSX. You should also be able to get it to work under Cygwin on Windows (currently untested).

To use the `lingbib` program, you will need the following:
* Python 2.7 or 3.1+ (tested on 2.7, should work on 3.1-3.4, may also work on 2.6 and 3.0)
* Bibtool >= 2.60

Python is installed by default on Ubuntu and OSX. Enter `python --version` to check your version. On other systems, you may have to download and install it.

The author of Bibtool provides only the source code. Please see the [build instructions][build-bibtool]. Binaries are available through Ubuntu, but the version as of Ubuntu 15.04 is still older than 2.60, which contains a critical bug fix relevant to Lingbib. If you really don't want to install from source, you can try [Homebrew][homebrew] on OSX (tested) or [Linuxbrew][linuxbrew] on Ubuntu (untested).
* Ubuntu: `brew install bib-tool`
* OSX:    `brew install bib-tool`

### Set the "upstream" repository

Once everything else is set up, open a terminal and navigate to your local repository, and enter `lingbib config defaults` to check the `git` configuration and fill in any gaps, including the "upstream" repository.

## Support

If you have general comments or questions about Lingbib, we have a Gitter chatroom where you can join our discussion about how to build and maintain Lingbib. Feel free to also just drop by and say *hi*!

[![Join the chat at https://gitter.im/lingbib/lingbib](https://badges.gitter.im/Join%20Chat.svg)][gitter-chat]

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
[wiki]: https://github.com/lingbib/lingbib/wiki
[remote-bibfile]: https://github.com/lingbib/lingbib/wiki/Using-a-remote-bibliography-file
[install-git]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[build-bibtool]: https://github.com/ge-ne/bibtool/blob/master/README
[homebrew]: http://brew.sh/
[linuxbrew]: https://github.com/Homebrew/linuxbrew
[install]: #installation
[phil]: #philosophy
[ussl]: #comments-on-the-unified-style-sheet-for-linguistics
[uss]: http://celxj.org/downloads/UnifiedStyleSheet.pdf
[CELxJ]: http://celxj.org/
[use]: https://github.com/lingbib/lingbib#using-the-bib-file
[contrib]: #contributing
[pr]: #submit-a-pull-request
[gitter-chat]: https://gitter.im/lingbib/lingbib?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge
[issue]: https://github.com/lingbib/lingbib/issues
[email]: mailto:adam.liter@gmail.com,khanson679@gmail.com
