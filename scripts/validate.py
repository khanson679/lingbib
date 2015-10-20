#!/usr/bin/env python2.7

"""
Validate contents of a bibliography file with respect to Lingbib conventions.

Currently tests for bad entry types, fields, and keywords.
"""

from __future__ import print_function
import sys
import os
import glob
from pprint import pprint

# ensure 'bibtexparser' package installed
try:
    import bibtexparser as btp
except ImportError as e:
    print(e)
    print("Please install 'bibtexparser' with `pip install bibtexparser`")
    sys.exit(1)

# files containing lists of allowed values
ENTRY_TYPE_FILE = "resources/entry_types.txt"
ENTRY_FIELD_FILE = "resources/entry_fields.txt"
KEYWORD_FILE = "resources/keywords.txt"

# sanity check
if not os.path.isfile(KEYWORD_FILE):
    print("Can't find '{}'".format(KEYWORD_FILE))
    print("Are you in the root of Lingbib?")
    sys.exit(1)

# read files
MASTER_ETYPE_LIST = set(line.strip() for line in open(ENTRY_TYPE_FILE))
MASTER_FIELD_LIST = set(line.strip() for line in open(ENTRY_FIELD_FILE))
MASTER_KW_LIST = set(line.strip() for line in open(KEYWORD_FILE))

# lists of tuples of form (undocumented item name, entry key, filename)
UNDOCUMENTED_ETYPES = []
UNDOCUMENTED_FIELDS = []
UNDOCUMENTED_KEYWORDS = []

#
# validation functions
#
# check contents of entries and record violations for report at the end
#


def check_entry_type(entry, filename):
    if entry['ENTRYTYPE'] not in MASTER_ETYPE_LIST:
        UNDOCUMENTED_ETYPES.append((entry['ENTRYTYPE'], entry['ID'], filename))


def check_fields(entry, filename):
    for field in entry:
        if field not in MASTER_FIELD_LIST and field not in ('ID', 'ENTRYTYPE'):
            UNDOCUMENTED_FIELDS.append((field, entry['ID'], filename))


def check_keywords(entry, filename):
    try:
        keywords = set(kw.strip() 
                       for kw in entry['keywords'].split(','))
    except KeyError:
        return

    for kw in keywords:
        if kw not in MASTER_KW_LIST:
            UNDOCUMENTED_KEYWORDS.append((kw, entry['ID'], filename))


#
# parse files and run tests on each entry
#

# get filenames
BIB_FILENAMES = sys.argv[1:]
if not BIB_FILENAMES:
    print("Need at least one `.bib` file to check.")
    sys.exit(1)

for filename in BIB_FILENAMES:
    with open(filename, 'r') as bibfile:
        # parse file
        parser = btp.bparser.BibTexParser()
        parser.ignore_nonstandard_types = False
        parser.homogenise_fields = False
        db = btp.load(bibfile, parser)

        # run tests
        for entry in db.entries:
            check_entry_type(entry, filename)
            check_fields(entry, filename)
            check_keywords(entry, filename)


#
# report results
#

if UNDOCUMENTED_ETYPES:
    print("Found undocumented entry types:")
    for entry in UNDOCUMENTED_ETYPES:
        print("'{}'\tin [{}] in [{}]".format(*entry))

    print()
    print("Please correct any spelling errors.")
    print("If you want to use a type not currently in use, "
          "please open an issue on GitHub.")
    print("(https://github.com/lingbib/lingbib/issues)")
    print()


if UNDOCUMENTED_FIELDS:
    print("Found undocumented fields:")
    for entry in UNDOCUMENTED_FIELDS:
        print("'{}'\tin [{}] in [{}]".format(*entry))

    print()
    print("Please correct any spelling errors.")
    print("If you want to use a field not currently in use, "
          "please open an issue on GitHub.")
    print("(https://github.com/lingbib/lingbib/issues)")
    print()

if UNDOCUMENTED_KEYWORDS:
    print("Found undocumented keywords:")
    for entry in UNDOCUMENTED_KEYWORDS:
        print("'{}'\tin [{}] in [{}]".format(*entry))

    print()
    print("Please change these keywords to match similar ones in the master list,")
    print("or add them if necessary.")
    print()

if UNDOCUMENTED_ETYPES or UNDOCUMENTED_FIELDS or UNDOCUMENTED_KEYWORDS:
    sys.exit(1)