#
# Makefile for Lingbib database generation
#
# To generate the end-user database, run `make` from the directory containing
# the makefile.
#
# The generated files should not be under version control.
# To clean up all generated files, run `make clean`.
#
# If you want to keep the new generated database, run `make release`.
# You should only do this after checking the results of a regular `make` run.
#

SCRIPT_DIR = ../scripts

SRC_DIR = src
SRC_STRINGS = ${SRC_DIR}/strings_*.bib
SRC_METADATA = ${SRC_DIR}/metadata_*.bib
SRC_ENTRIES = ${SRC_DIR}/entries.bib
SRC_ALL = ${SRC_STRINGS} ${SRC_METADATA} ${SRC_ENTRIES}

OUT_DIR = out
OUT_FILE = ${OUT_DIR}/lingbib-master.bib

RELEASE_DIR = ../release


all: $(OUT_FILE)

$(OUT_FILE): $(SRC_ALL) $(OUT_DIR)
	# concatenate files with blank lines in between
	$(SCRIPT_DIR)/cat_with_headers.sh $(SRC_ALL) > $(OUT_FILE)

$(OUT_DIR):
	mkdir -p $(OUT_DIR)


release: $(OUT_FILE) $(RELEASE_DIR)
	cp $(OUT_FILE) $(RELEASE_DIR)


.PHONY: clean
clean:
	rm -rf $(OUT)
