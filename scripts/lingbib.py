#!/usr/bin/env python

"""
lingbib.py

This script provides a simple command line interface for using and contributing
to lingbib.
"""

# from __future__ import print_function
# import sys
# import os
# import logging
# import re

from docopt import docopt

__author__ =  "Kenneth Hanson"
__version__ = "0.0.0"
__date__ =    "6/18/2015"

usage = """
lingbib v{version}
CLI script by Kenneth Hanson

Usage:
  lingbib.py <command> [options]
  lingbib.py (-h | --help)
  lingbib.py --version

Commands:
  update
  submit

Arguments:
  SUBMISSION      File containing new BibLaTeX formatted entries to submit
                  (no more than 10 please.)

Options:
  -h --help       Show this screen.
  --version       Show version.
  -p PERSONAL_DB  Use given .bib file rather than default lingbib-personal.bib.
  -q --quiet      Don't print warnings.
  -v --verbose    Print info beyond warnings and errors.

See 'lingbib help <command>' for more information on a specific command.

""".format(version=__version__)

docopt(usage, version=__version__)