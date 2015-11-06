#!/usr/bin/env bash
#
# Print given files to stdout with headers showing filename

for file in $@; do {
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "% ${file##*/}" # strip prefix, leaving only filename
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	cat $file
	echo
} done
