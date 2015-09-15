# Lingbib

## Overview

Every linguist who is a user of (La)TeX currently has to create and maintain their own `.bib` file for references. It would be much more efficient if we could all contribute to and use a single, comprehensive bibliographic database for the field of linguistics. In addition to saving time for everyone, a collaborative approach would also help maximize the accuracy of the data.

This is what Lingbib is. Lingbib includes such a database, provided in BibLaTeX format (and in the future, the old BibTeX format), along with a system for...
* maintaining a copy of the master database on your local computer,
* syncing the master database with a personal database for use with JabRef, BibDesk, and similar tools,
* backing up your personal database remotely,
* contributing to the master database

We do this using the Git versional control system, but you don't need to know Git in order to use Lingbib as everything is coordinated using a simple command line helper program.

All users and contributors should read the remainder of this README. Additional documentation is available on the [Lingbib wiki][wiki].

## Warning

This README is currently under construction, and may not accurately describe the current state of the project. Lingbib itself is also not ready for use quite yet, but if you're interested in contributing to the project then by all means read through the documentation, try it out (you may want to look in the development branches), and let us know if you'd like to [get involved](#contributing).

## Getting started

If all you want to do is use entries from the database as is, you can simply tell BibLaTeX to access the main `.bib` file over the internet. See [Using a remote bibliography file][remote-bibfile] for instructions.

If you want to use any further features of Lingbib, or if you wish to contribute to the project, you will need to setup a local repository on your computer. See the [installation instructions][install] for details. In the future we may create a web interface for new entry submissions, at the very least, but at the moment this is the only option.

## General project notes

### Comments on the unified style sheet for linguistics

The [unified style sheet for linguistics][uss] was developed by [CELxJ, the Committee of Editors of Linguistics Journals][CELxJ].

**DETAILS TO COME**

## Support

If you have general comments or questions about Lingbib, we have a Gitter chatroom where you can join our discussion about how to build and maintain Lingbib. Feel free to also just drop by and say *hi*!

[![Join the chat at https://gitter.im/lingbib/lingbib][gitter-badge]][gitter-chat]

You can also report problems and bugs as well as suggest improvements via [GitHub issues][issue].

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
[install]: https://github.com/lingbib/lingbib/wiki/Setup-instructions
[phil]: #philosophy
[ussl]: #comments-on-the-unified-style-sheet-for-linguistics
[uss]: http://celxj.org/downloads/UnifiedStyleSheet.pdf
[CELxJ]: http://celxj.org/
[use]: https://github.com/lingbib/lingbib#using-the-bib-file
[contrib]: #contributing
[pr]: #submit-a-pull-request
[gitter-chat]: https://gitter.im/lingbib/support?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge
[gitter-badge]: https://badges.gitter.im/Join%20Chat.svg
[issue]: https://github.com/lingbib/lingbib/issues
[email]: mailto:adam.liter@gmail.com,khanson679@gmail.com
