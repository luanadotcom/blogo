#!/bin/bash
set -e


printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project
hugo

cd luanadotcom.github.io

git add .

message="Rebuild site `date`"

if [ -n "$*" ]; then
    message="$*"
fi

git commit -m "$message"

git push origin master


