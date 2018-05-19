#!/bin/bash

cd pre
git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch *.mp4 ' --prune-empty --tag-name-filter cat -- --all
git push rserver --force --all
git push rserver --force --tags
git for-each-ref --format='delete %(refname)' refs/original | git update-ref --stdin
git reflog expire --expire=now --all
git gc --prune=now
git count-objects -v
