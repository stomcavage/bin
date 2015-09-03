#!/bin/bash

PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin
GIT=`which git`

START_DIR=`pwd`

VIM_DIR=/Users/stomcavage/.vim/bundle

BUNDLES=`ls -l --time-style="long-iso" $VIM_DIR | egrep '^d' | awk '{print $8}'`

for BUNDLE in $BUNDLES
do
  echo "Updating ${BUNDLE}"
  cd "${VIM_DIR}/${BUNDLE}"
  ${GIT} pull origin master
  echo
done

cd $START_DIR
