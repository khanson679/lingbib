# Make sure that we can pull from the upstream remote
if ! git remote | grep upstream > /dev/null; then
    git remote add upstream https://github.com/lingbib/lingbib.git

fi
# Check for unstaged changes
if ! git diff-files --quiet; then
    echo "You have unstaged changes in the current working directory."
    echo  "They must be stashed or committed before you can add a new \
    entry."
    echo "To stash changes, run 'git stash'."
    echo "When you are back on this branch, you can unstash them with \
    'git stash pop'."
    echo "If you want to commit the changes instead, you must stage \
    them with 'git add' and then commit them with 'git commit'."
    err=1
fi
# Check for staged but uncommitted changes
if ! git diff-index --quiet --cached HEAD; then
    echo "You have staged but uncommitted changes in your index."
    echo "They must be committed with 'git commit' before you can \
    add a new entry."
    err=1
fi
# If err=1, then exit
if [ $err = 1 ]; then
    exit 1
fi
# Checkout a branch called NewEntries
if git branch | grep NewEntries > /dev/null; then
    # If it already exists, we want to get some user input
    echo "The branch NewEntries already exists."
    echo "If you have a pull request that is still open, you can \
    just check out the NewEntries branch and add to it."
    echo "If your last pull request is closed, then the branch should \
    be deleted and recreated."
    echo "Please hit '1' and 'ENTER' if your last pull request is still \
    open."
    echo "If your last pull request has been closed, hit '2' and 'ENTER'"
    select oc in "Open" "Closed"; do
        case $oc in 
            # In principle, if the pull request is still open,
            # there should be no merge conflicts.
            # However, we might want to make this more robust
            # and check for merge conflicts and exit gracefully
            # if there are any merge conflicts
            Open ) git checkout NewEntries; git pull --rebase upstream master; break;;
            Closed ) git checkout master; git pull --rebase upstream master; git branch -D NewEntries; git push origin --delete NewEntries; git checkout -b NewEntries; break;;
        esac
    done 
else
    # If it doesn't already exist, we can just check it out
    # First, make sure we are on master branch
    git checkout master
    # Get any new updates from main repository
    git pull --rebase upstream master
    # Make the new branch
    git checkout -b NewEntries
fi
echo "You are now on a new branch called NewEntries."
echo "You can add entries on this new branch."
echo "When you are done adding entries, stage and commit them with \
'lingbib add' and 'lingbib commit'."
# 'lingbib add' will need to run the BibTool scripts on the files and then
# stage the files with 'git add'
# 'lingbib commit' will need to just be a wrapper for 'git commit'
echo "Then, push your changes to GitHub with 'lingbib pushnew'."
# 'lingbib pushnew' will just need to be a wrapper for
# 'git push origin NewEntries'
echo "After that, you can go to your fork of the lingbib repository \
on github.com
 and create a pull request."
echo "Thank you for contributing to this project!"