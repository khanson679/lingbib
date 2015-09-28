%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Load other resource files
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
resource.search.path = {./bibtool/}
resource = {biblatex.rsc}
resource = {format.rsc}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Sort for merging lingbib.bib and new.bib
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sort = on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Check for, and delete, duplicates
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
check.double = on
check.double.delete = on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Sanitizing
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%
%%% Preserve key case
%%%
preserve.key.case = on

%%%
%%% Delete empty fields
%%%
rewrite.rule {"^\" *\"$"}
rewrite.rule {"^{ *}$"}

%%%
%%% Delete extra fields from BibDesk
%%%
delete.field = {date-added}
delete.field = {date-modified}
delete.field = {bdsk-file-1}
delete.field = {bdsk-file-2}
delete.field = {bdsk-file-3}
delete.field = {bdsk-file-4}
delete.field = {bdsk-url-1}
delete.field = {bdsk-url-2}
delete.field = {bdsk-url-3}
delete.field = {bdsk-url-4}

%%%
%%% Delete extra fields from JabRef
%%%
delete.field = {owner}
delete.field = {timestamp}
delete.field = {file}
delete.field = {__markedentry}

%%%
%%% Delete fields supplied for user to override key generation
%%%
delete.field = {asdf}
delete.field = {xkcd}