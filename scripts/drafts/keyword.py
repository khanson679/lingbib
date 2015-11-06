#!/usr/bin/env python

from __future__ import print_function
import sys


KEYWORD_FILENAME = "resources/keywords.txt"


def usage():
    print("Usage:\n"
          "  keyword.py add <keyword>...\n"
          "  keyword.py remove <keyword>...\n"
          "  keyword.py change <old> <new>",
          file=sys.stderr)
    sys.exit(1)


if len(sys.argv) < 2:
    usage()

command = sys.argv[1]

with open(KEYWORD_FILENAME, 'rw') as kwfile:
    old = set(line.strip() for line in kwfile)

    if command == "add":
        if len(sys.argv) < 3:
            usage()
        new = sys.argv[2:]
        combined = sorted(set())
