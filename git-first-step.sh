#!/bin/bash

# ----------------------------------------------------------------------------
# git-first-step.sh -- created 2010-07-28, Taurus Olson
# @Description:
# @Last Change: Mer jul 28 12:00  2010 CEST
# @Revision:    0.0
# ----------------------------------------------------------------------------

# git-first-step.sh -- created 2010-07-28, 

PROJECT=$1
mkdir $PROJECT
cd $PROJECT
git init
touch README
git add README
git commit -m 'first commit'
git remote add origin git@github.com:TaurusOlson/$PROJECT.git
git push origin master
