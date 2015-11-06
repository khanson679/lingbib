#
# Makefile for Lingbib database generation
#
# To use, run `make` from the directory containing the makefile.
#
# To build a single target, add its name after the command.
# To clean up all generated files, add "clean" after the command.
#

SRC_DIR = database_src
SRC_STRINGS = ${SRC_DIR}/strings_*.bib
SRC_METADATA = ${SRC_DIR}/metadata_*.bib
SRC_ENTRIES = ${SRC_DIR}/entries.bib
SRC_ALL = ${SRC_STRINGS} ${SRC_METADATA} ${SRC_ENTRIES}

OUT = lingbib-master.bib


all: $(OUT)

$(OUT): $(SRC_ALL)
	# concatenate files with blank lines in between
	scripts/cat_with_headers.sh $(SRC_ALL) > $(OUT)

.PHONY: clean
clean:
	rm -rf $(OUT)
