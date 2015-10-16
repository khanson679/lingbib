#
# Makefile for Lingbib database generation
#
# To use, run `make` from the directory containing the makefile.
#
# To build a single target, add its name after the command.
# To clean up all generated files, add "clean" after the command.
#

DB_SRC = database_src/*
DB_OUT = lingbib-master.bib

all: $(DB_OUT)

$(DB_OUT): $(DB_SRC)
	# concatenate files with blank lines in between
	for file in $(DB_SRC); do cat $$file; echo; done > $(DB_OUT)

.PHONY: clean
clean:
	rm -rf $(DB_OUT)
