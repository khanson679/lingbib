#!/usr/bin/env python2.7

"""
Validate contents of a bibliography file with respect to Lingbib conventions.

For now, just checks if keywords are on master list.
"""

from __future__ import print_function
import sys
import os
import glob
from pprint import pprint

try:
    import bibtexparser as btp
except ImportError as e:
    print(e)
    print("Please install 'bibtexparser' with `pip install bibtexparser`")
    sys.exit(1)


KEYWORD_FILE = "database_src/keywords.txt"
BIB_FILENAMES = sys.argv[1:]


#
# sanity check
#

if not os.path.isfile(KEYWORD_FILE):
    print("Can't find '{}'".format(KEYWORD_FILE))
    print("Are you in the root of Lingbib?")
    sys.exit(1)

if not BIB_FILENAMES:
    print("Need at least one `.bib` file to check.")
    sys.exit(1)



#
# validation functions
#

MASTER_KW_LIST = set(line.strip() for line in open(KEYWORD_FILE))
UNDOCUMENTED_KWS = []

def check_keywords(entry):
    try:
        keywords = set(kw.strip() 
                       for kw in entry['keywords'].split(','))
    except KeyError:
        return

    for kw in keywords:
        print(kw)
        if kw not in MASTER_KW_LIST:
            UNDOCUMENTED_KWS.append((kw, entry['ID'], filename))


#
# run tests on each entry in given files
#

for filename in BIB_FILENAMES:
    with open(filename, 'r') as bibfile:
        parser = btp.bparser.BibTexParser()
        parser.ignore_nonstandard_types = False
        parser.homogenise_fields = False
        db = btp.load(bibfile, parser)

        for entry in db.entries:
            check_keywords(entry)


#
# report results
#

if UNDOCUMENTED_KWS:
    print("Found undocumented keywords:")
    for entry in UNDOCUMENTED_KWS:
        print("'{}' in '{}' in '{}'".format(*entry))

    print("Please change these keywords to match similar ones in the master list,")
    print("or add them if necessary.")
    sys.exit(1)