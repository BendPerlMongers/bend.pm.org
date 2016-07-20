#!/bin/bash

bin/build -a
cd output
git add -A .
git commit -m "rebuild pages"
git push upstream HEAD:gh-pages
