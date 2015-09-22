%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Load other resource files
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
resource.search.path = {./bibtool/}
resource = {biblatex.rsc}
resource = {format.rsc}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Generate unique citekeys
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%
%%% Follow crossrefs for the purposes of key generation
%%%
select.crossrefs = on

%%%
%%% New data fields for overrides by the user
%%%
new.field.type = {keyoverride}
new.field.type = {titlekeyword}

%%%
%%% Preserve key case
%%%
preserve.key.case = on

%%%
%%% More words to ignore in the title search in addition to the defaults
%%% see `defaults.rsc`
%%%
ignored.word = {this}

%%%
%%% Algorithm for generating unique cite keys
%%%

%% Specify a new format type so we use the van part of the name, too
new.format.type = {2 = "%*v"}

%% Clear the et al generated part of the name
fmt.et.al = {}

%% Expand macros
key.expand.macros = on

%% For identical keys, add a lower case letter with no separator
key.base = lower
key.number.separator = {}

%% Follow these steps for generating the keys:
%%  (i)    if the entry type is @xdata, keep the cite key that the user supplied
%%  (ii)   otherwise, if the data field keyoverride was specified, use its content as the cite key
%%         NB: this allows the user to overwrite what bibtool would generate if bibtool
%%         would do something stupid otherwise; if it would do something stupid, feel
%%         free to open a GitHub issue and/or submit a pull request that modifies this script
%%  (iii)  otherwise:
%%           (a)    if there is a van part of the last name for the first author, use the lowercase
%%                  version of it; if not, don't print anything, and, in either case, print the
%%                  lowercased version of the author's last name
%%                    NB: if the first author has more than one last name, they will all be printed, 
%%                    separated with a '-'
%%           (b)    if there is no author, do this for the editor instead
%%           (c)    then, add the first four digits from the date field and a colon if the date field
%%                  exists; if it doesn't, just add a colon
%%           (d)    then, if the field titlekeyword is specified, add its lowercased content after the colon;
%%                  otherwise, add the first not ignored word from the title field and make it lowercase
%%                    NB: the user can provide something to put after the year and colon by specifying
%%                    something in the titlekeyword field in case the first not ignored word of the title field
%%                    isn't really all that informative; feel free to suggest a new word for this script
%%                    to ignore by either opening a GitHub issue or submitting a pull request
%%  (iv)   otherwise, return '???' as the cite key; if this happens to you, please open a GitHub issue
key.format = {
		%#s(@xdata)
		{
			%s($key)
		}
	#
		{
			%-s(keyoverride)
		}
	#
		{
				{
						{%-1.2p(author) # }
						{%-1n(author)}
					#
						{%-1.2p(editor) # }
						{%-1n(editor)}
				}		
				{%4d(date): # :}
				{%-s(titlekeyword) # %-T(title) # }
		}
	# ???
}