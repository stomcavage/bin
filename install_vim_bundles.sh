#!/bin/bash

GIT=`which git`
CABAL=`which cabal`
VIMDIR=~/.vim/bundle

[[ $(type -P "$CABAL") ]] || {
  ${CABAL} install hdevtools
}

mkdir -p ${VIMDIR}
cd ${VIMDIR}

${GIT} clone git://github.com/tpope/vim-sensible.git
${GIT} clone https://github.com/scrooloose/syntastic.git
${GIT} clone https://github.com/scrooloose/nerdtree.git
${GIT} clone git://github.com/tpope/vim-vinegar.git
${GIT} clone git://github.com/airblade/vim-gitgutter.git
${GIT} clone https://github.com/vim-scripts/VimClojure.git
${GIT} clone https://github.com/bitc/vim-hdevtools.git
${GIT} clone git://github.com/tpope/vim-endwise.git
${GIT} clone git://github.com/tpope/vim-surround.git

