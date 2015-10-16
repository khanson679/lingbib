# Workflow for new entries

1. Make sure the repo is up to date.

    ```git pull lingbib master```

2. Create a new branch (e.g. `dbedit`) based on `master` and make all changes there.

    `git branch dbedit master`

3. Add entries of a single type (e.g. regular entries, periodicals) to a new file (such as `new.bib`).

4. Run Bibtool scripts to generate keys and sanitize additions.

    `bibtool -r bibtool/keygen.rsc new.bib -o new.bib`
    `bibtool -r bibtool/sanitize.rsc new.bib -o new.bib`

5. Check Bibtool output. If there are any problems, fix them and repeat step (4).

6. Merge new entries to the appropriate database file (in `database_src`).
    
    `bibtool -r bibtool/biblatex.rsc -r bibtool/format.rsc new.bib DB_FILE -o DB_FILE`

7. Check the results.

    `git diff`

    If there are any problems, restore the old database file and try again.

    `git checkout -- DB_FILE`

8. If everything is okay, delete the file for new entries.

    `rm new.bib`

9. Repeat steps (3-8) for any other entry types.

10. When finished, commit changes and push.

    `git add database_src`
    `git commit`
    `git push personal master`

11. Submit a pull request on GitHub.
