#!/bin/sh

GIT=`which git`
GREP=`which grep`
REPO=$HOME/.oh-my-zsh
START=`pwd`

cd $REPO

UPSTREAM=$GIT remote | $GREP "upstream"

if [ $UPSTREAM ]; then
	$GIT remote add upstream git://github.com/robbyrussell/oh-my-zsh
fi

$GIT checkout master
$GIT fetch upstream
$GIT merge upstream/master
$GIT push origin master

cd $START
