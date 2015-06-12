%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Load other resource files
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
resource.search.path = {./scripts/}
resource = {biblatex.rsc}
resource = {format.rsc}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Merge personal copy with main copy
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%
%%% We need to sort in order to be able to check for duplicates.
%%% The default sort format sorts by citekey; so this will check
%%% for duplicates based on the citekey.
%%%
sort = on

%%%
%%% Check for, and delete, duplicates
%%%
check.double = on
check.double.delete = on