%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Formatting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%
%%% Always do things on one line
%%%
print.line.length = 100000

%%%
%%% Use 2 spaces and no tab
%%%
print.indent = 2
print.use.tab = off

%%%
%%% New alignment for the equals sign because we have increased the indent
%%% to 4 and because BibLaTeX has longer data field names
%%% 'eventtitleaddon' is 15 characters, and we have a 4 space indent
%%% so let's do 15 + 4 = 19, plus another 3 to have some offset
%%%
print.align = 32
print.align.string = 32
print.align.key = 32

%%%
%%% Translate double quotes as delimiters "" by braces {}
%%%
rewrite.rule = {"^\"\([^#]*\)\"$" = "{\1}"}
rewrite.rule = {"# \"\([^#]*\)\"$" = "# {\1}"}
rewrite.rule = {"^\"\([^#]*\)\" #" = "{\1} #"}
rewrite.rule = {"# \"\([^#]*\)\" #" = "# {\1} #"}

%%%
%%% Do page ranges with '--' instead of any other number of -'s
%%%
rewrite.rule {pages # "\([0-9]+\) *\(-\|---\) *\([0-9]+\)" = "\1--\3"}