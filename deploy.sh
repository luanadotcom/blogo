#!/bin/bash
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Deploy changes to submodule repo
hugo
cd luanadotcom.github.io
git add -A

message="Rebuild site `date +%Y-%m-%d`"
if [ -n "$1" ]; then
    message="$1"
    fi
git commit -m "$message"
git push origin master

# Deploy changes to this repo
cd ..
git add -A
git commit -m "$message"
git push origin master
