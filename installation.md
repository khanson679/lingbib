# Lingbib Installation

In order to make full use of Lingbib, you will need to do the following:
* Fork the Lingbib repository on Github.
* Clone your forked repository on your local computer, setting the Github repository as the "origin" remote repository.
* Install the software dependencies for the `lingbib` helper program.
* Set the Lingbib repository as the "upstream" remote repository.

You may be able to do what you need with Lingbib using an alternative setup, but we encourage you to use this one regardless since having one common system makes it easier to troubleshoot problems. Additionally, contributors must use this setup in order for their contributions to be accepted.

## Fork the Lingbib repository

To fork the Lingbib repository, simply click the "fork" button at the top of the [Lingbib Github page][lingbib]. You will need to create an account if you don't have one already.

## Clone the forked repository

To download a copy of the forked repository, open a terminal and enter `git clone <repository address> <target directory>`. This will set the Github repository you cloned from as "origin" by default. If you omit the target directory from this command, a directory called "lingbib" will be created and used by default.

See the official instructions for [installing Git][install-git] if you don't have it already.

## Install the software dependencies

The `lingbib` helper program currently works on Unix-like systems, including Debian/Ubuntu Linux and Mac OSX. You should also be able to get it to work under Cygwin on Windows (currently untested).

To use the `lingbib` program, you will need the following:
* Python 2.7 or 3.1+ (tested on 2.7, should work on 3.1-3.4, may also work on 2.6 and 3.0)
* Bibtool >= 2.60

Python is installed by default on Ubuntu and OSX. Enter `python --version` to check your version. On other systems, you may have to download and install it.

The author of Bibtool provides only the source code. Please see the [build instructions][build-bibtool]. Binaries are available through Ubuntu, but the version as of Ubuntu 15.04 is still older than 2.60, which contains a critical bug fix relevant to Lingbib. If you really don't want to install from source, you can try [Homebrew][homebrew] on OSX (tested) or [Linuxbrew][linuxbrew] on Ubuntu (untested).
* Ubuntu: `brew install bib-tool`
* OSX:    `brew install bib-tool`

## Set the "upstream" repository

Once everything else is set up, open a terminal and navigate to your local repository, and enter `lingbib config defaults` to check the `git` configuration and fill in any gaps, including the "upstream" repository.
