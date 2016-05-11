#!/bin/sh

GIT=`which git`
MVN=`which mvn`

cd ~/tmp

git clone git@github.com:cflint/CFLint.git

cd CFLint

sudo mvn clean install -D assembleDirectory=/usr/local
