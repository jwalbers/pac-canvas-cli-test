#!/usr/bin/env bash

# Must start with a clean src dir
if [ -e src ]; then
    rm -rf src/*
else
    mkdir src
fi    
pac canvas unpack --msapp app.msapp --sources src
git add src
# This specific commit message prefix turns off the pre-commit hook.
git commit -m "pac: unpack baseline"
