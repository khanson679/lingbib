# Makefile for Lingbib maintenance
#
# To use, run `make` from the directory containing the makefile.
#
# To build a single target, add its name after the command.
# To clean up all generated files, add "clean" after the command.
#

DB_SOURCE=database_src/*
DB_OUT=lingbib-master.bib

all: $(DB_OUT)

$(DB_OUT): $(DB_SOURCE)
	# concatenate files with blank lines in between
	for i in $(DB_SOURCE); do cat $$i; echo; done > $(DB_OUT)

.PHONY: clean
clean:
	rm -rf $(DB_OUT)
