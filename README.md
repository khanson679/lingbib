# Lingbib

Lingbib is a comprehensive, collaborative linguistics bibliography for (La)TeX documents.
It is intended to be used with the [S&P Biblatex implementation][uss-biblatex] of the [Unified Stylesheet for Linguistics][uss], but can also be used with other Biblatex styles.


## Overview

Every linguist who is a user of LaTeX currently has to create and maintain their own bibliography.
It would be much more efficient if we could all contribute to and use a single, comprehensive bibliographic database for the field of linguistics.
This approach will also help maximize the accuracy of the data.

Lingbib provides such a database in Biblatex format (and in the future, the old BibTeX format), along with a system for...
* maintaining an up-to-date copy of the database on your local computer,
* syncing the database with a personal bibliography containing user-specific additions (for use with JabRef, BibDesk, and similar tools),
* backing up your personal bibliography remotely, and
* contributing to the database

We do this using the [Git][git] version control system, but you don't need to know Git in order to use Lingbib as we also provide a simple command line helper program (maintained separately at [lingbib-app][app]).


## Project Status

This project is currently in the alpha stage.
The database is small, and the [helper program][app] is not yet complete.
We are in particular need of contributors in order to build Lingbib to a size large enough to be useful to general users, and could also use help from technically-inclined invididuals in testing the program and submission system.


## Using Lingbib

Lingbib can be used in LaTeX documents without additional setup thanks to Biblatex and Biber's ability to read remote bibliography files.
To avoid having to access it over the internet on every compile, or to make use of any additional features, you will need to download and configure Lingbib.

Instructions for setup and use can be found on the wiki at [Getting Started][getting-started].


## How to Contribute

The main way you can contribute to Lingbib is by submitting new entries and revisions to the bibliography file.
For further information on how to contribute, see [For Contributors][for-contributors] on the wiki.


## Call for Maintainers

We are currently looking for addition maintainers, and we expect this need to grow over time as the database gets larger.
If you are interested getting more closely involved, you should get in touch with the Lingbib co-creators [Adam and Kenneth][email].
We would greatly appreciate your help! :smile:

Helping to maintain Lingbib will mostly involve handling pull requests and issues.
Please see [For maintainers][for-maintainers] on the wiki for further information.


## Documentation

General documentation is available on the [Lingbib wiki][wiki].
Low-level documentation relevant only to maintainers, example database entries, and similar content is stored directly in the repository.


## Support

If you have general comments or questions about Lingbib, we have a Gitter chatroom where you can join our discussion about how to build and maintain Lingbib.
Feel free to also just drop by and say *hi*!

[![Join the chat at https://gitter.im/lingbib/lingbib][gitter-badge]][gitter-chat]

You can also report problems and bugs as well as suggest improvements via [GitHub issues][issues].



[app]: https://github.com/lingbib/lingbib-app
[for-contributors]: https://github.com/lingbib/lingbib/wiki/For-contributors
[for-maintainers]: https://github.com/lingbib/lingbib/wiki/For-maintainers
[getting-started]: https://github.com/lingbib/lingbib/wiki/Getting-started
[git]: http://git-scm.com/
[gitter-chat]: https://gitter.im/lingbib/support?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge
[gitter-badge]: https://badges.gitter.im/Join%20Chat.svg
[issues]: https://github.com/lingbib/lingbib/issues
[uss-biblatex]: https://github.com/semprag/biblatex-sp-unified
[uss]: celxj.org/downloads/UnifiedStyleSheet.pdf
[wiki]: https://github.com/lingbib/lingbib/wiki
[email]: mailto:adam.liter@gmail.com,khanson679@gmail.com
