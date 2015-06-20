#!/bin/sh
#
# This is a shell script for merging your personal copy of the database
# with the main copy of the database.

# Step 1: update the main database.

# Make sure we are on the master branch.
git checkout master

# If the upstream remote does not exist, then we need to add it.
if ! git remote | grep upstream > /dev/null; then
	git remote add upstream https://github.com/lingbib/lingbib.git
fi

# Pull from the upstream remote.
if ! git pull --rebase upstream master > /dev/null; then
	echo "ERROR:"
	echo "There were merge conflicts when trying to run \
	'git pull --rebase upstream master'"
	echo "Please run 'git pull --rebase upstream master' and resolve the \
	conflicts"
	echo "Then you can rerun this script to update your personal \
	copy of the database"
	exit 1
fi

# Step 2: merge the updated copy of the main database with the personal copy.

# NB: it is *very* important that 'lingbib-personal.bib' come before 
# 'lingbib.bib' as arguments to bibtool. BibTool will keep the duplicate
# copy from the first .bib file, so 'lingbib-personal.bib' *must* come
# first in order for the entry with the link to the PDF file to be kept.

echo "BibTool produces warnings each time it finds a possible duplicate entry."
echo "Do you wish to see these warnings?"
echo "Hit '1' and then 'ENTER' for yes or '2' and then 'ENTER' for no."
select yn in "yes" "no"; do
	case $yn in
		yes ) bibtool -r scripts/personal-merge.rsc lingbib-personal.bib lingbib.bib -o lingbib-personal.bib; break;;
		no ) bibtool -q -r scripts/personal-merge.rsc lingbib-personal.bib lingbib.bib -o lingbib-personal.bib; break;;
	esac
done

