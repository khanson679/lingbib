#!/usr/bin/env make -f
#
# Makefile for Lingbib maintenance
#
# To use, run ONE of the following:
#   $ make -f scripts/makefile
#   $ ./scripts/makefile
#
# To build a single target, add its name after the command.
# To clean up all generated files, add "clean" after the command.
#

DB_SOURCE = database/strings.bib database/xdata_* database/entries.bib
DB_OUT = lingbib.bib

all: $(DB_OUT)

$(DB_OUT): $(DB_SOURCE)
	cat $(DB_SOURCE) > $(DB_OUT)

.PHONY: clean
clean:
	rm -rf $(DB_OUT)