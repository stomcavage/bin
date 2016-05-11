#!/usr/local/bin/bash

PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin
GIT=`which git`

START_DIR=`pwd`

VIM_DIR=${HOME}/.vim/bundle

# The column containing the directory name might change depending on OS
BUNDLES=`ls -l $VIM_DIR | egrep '^d' | awk '{print $9}'`

for BUNDLE in $BUNDLES
do
  echo "Updating ${BUNDLE}"
  cd "${VIM_DIR}/${BUNDLE}"
  ${GIT} pull origin master
  echo
done

cd $START_DIR
