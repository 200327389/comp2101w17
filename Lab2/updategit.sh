#!/bin/bash
# this script auto-updates a gir repository and expects the commit connect on the comand line

git add -A
git commit -m "$1"
git push
