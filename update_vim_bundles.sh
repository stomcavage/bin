#!/bin/bash

GIT=`which git`

START_DIR=`pwd`

VIM_DIR=/Users/stomcavage/.vim/bundle

BUNDLES=`ls -l --time-style="long-iso" $VIM_DIR | egrep '^d' | awk '{print $8}'`

for BUNDLE in $BUNDLES
do
  cd "${VIM_DIR}/${BUNDLE}"
  ${GIT} pull origin master
done

cd $START_DIR
