#!/bin/bash

set -o errexit -o nounset

rev=$(git rev-parse --short HEAD)

cd output

git init
git remote add upstream "https://$GH_TOKEN@github.com/BendPerlMongers/bend.pm.org.git"
git fetch upstream
git reset upstream/gh-pages

touch .

git add -A .
git commit -m "rebuild pages at ${rev}"
git push -q upstream HEAD:gh-pages
