#!/bin/bash

GIT=`which git`
REPO=$HOME/.oh-my-zsh
START=`pwd`

cd $REPO

$GIT checkout master
$GIT fetch upstream
$GIT merge upstream/master
$GIT push origin master

cd $START