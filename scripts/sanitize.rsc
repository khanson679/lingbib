%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Load other resource files
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
resource = {biblatex.rsc}
resource = {format.rsc}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Sanitizing
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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