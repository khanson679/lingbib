#!/usr/bin/env python2.7

"""
Merge all new and changed entries from `lingbib-master.bib.` into
  `lingbib-personal.bib`.
Entries only in `lingbib-personal` are left as-is.
For now, the pathes are hard-coded.
"""

from __future__ import unicode_literals
from __future__ import print_function
import shutil
import os.path
from pprint import pprint

try:
    import bibtexparser as btp
except ImportError as e:
    print(e)
    print("Please install 'bibtexparser' with `pip install bibtexparser`")
    exit(1)


MASTER_FILENAME = "lingbib-master.bib"
PERSONAL_FILENAME = "lingbib-personal.bib"
PERSONAL_FILENAME_BACKUP = "lingbib-personal.old.bib"


#
# check files
#

if not os.path.isfile(MASTER_FILENAME):
    print("`{}` does not exist. Aborting.".format(MASTER_FILENAME))
    exit(1)

if not os.path.isfile(PERSONAL_FILENAME):
    print("`{}` does not exist.".format(MASTER_FILENAME))
    choice = raw_input("Create it by copying `{}`? [y/n]: ".format(PERSONAL_FILENAME))
    if choice == 'y':
        shutil.copyfile(MASTER_FILENAME, PERSONAL_FILENAME)
    else:
        print("Aborted.")
    exit(0)

#
# read
#

with open(MASTER_FILENAME, 'r') as master_file:
    # have to build a separate parser and modify the options manually
    #   before using with "load"
    parser = btp.bparser.BibTexParser()
    parser.ignore_nonstandard_types = False
    parser.homogenise_fields = False
    master_db = btp.load(master_file, parser)
    pprint(master_db.entries)

with open(PERSONAL_FILENAME, 'r') as personal_file:
    parser = btp.bparser.BibTexParser()
    parser.ignore_nonstandard_types = False
    parser.homogenise_fields = False
    personal_db = btp.load(personal_file, parser)

#
# merge
#

# list of messages for new and changes entries
new_list = []
changed_list = []

# process entries
for master_entry in master_db.entries:
    key = master_entry['ID']
    entry_type = master_entry['ENTRYTYPE']
    if key in personal_db.entries_dict:
        # copy changes
        personal_entry = personal_db.entries_dict[key]
        for field in master_entry:
            if field not in personal_entry:
                changed_list.append(
                    "ADD FIELD {}/{}/{}: {}".format(
                        entry_type, key, field, master_entry[field]))
                personal_entry[field] = master_entry[field]
            elif personal_entry[field] != master_entry[field]:
                changed_list.append(
                    "CHANGE FIELD {}/{}/{}: {} -> {}".format(
                        entry_type, key, field,
                        personal_entry[field], master_entry[field]))
                personal_entry[field] = master_entry[field]
    else:
        # copy entire entry
        # this must be placed in "entries", which is the actual
        #   source, rather than "entries_dict", which is a copy
        #   that does not stay in sync with "entries"
        new_list.append("ADD ENTRY {}/{}".format(entry_type, key))
        personal_db.entries.append(master_entry)
        

# process strings
for key in master_db.strings:
    master_str = master_db.strings[key]
    if key in personal_db.strings:
        personal_str = personal_db.strings[key]
        if master_str != personal_str:
            changed_list.append("CHANGE STRING {}: {} -> {}".format(key, personal_str, master_str))
            personal_db.strings[key] = master_str
    else:
        new_list.append("ADD STRING {}: {}".format(key, master_str))
        personal_db.strings[key] = master_str


#
# user confirmation and write
#

if not new_list and not changed_list:
    print("No modifications to be made.")
    exit(0)

if new_list:
    print("New entries:", *new_list, sep='\n')

if changed_list:
    print("Changed entries:", *changed_list, sep='\n')

choice = raw_input("Write changes? [y/n]: ")
if choice == 'y':   
    # write backup, followed by changes
    shutil.copyfile(PERSONAL_FILENAME, PERSONAL_FILENAME_BACKUP)
    with open(PERSONAL_FILENAME, 'w') as outfile:
        btp.dump(personal_db, outfile)
    print("Changes written to: ", PERSONAL_FILENAME)
    print("Backup found at: ", PERSONAL_FILENAME_BACKUP)
else:
    print("Write aborted.")