#!/bin/sh

# This script downloads and opens the Microsoft font Consolas. 
# Once it's open, click Install to complete installation.

#/usr/local/bin/brew install cabextract

CURL=`which curl`

mkdir -p ~/Downloads/consolas
cd ~/Downloads/consolas

$CURL -O http://download.microsoft.com/download/f/5/a/f5a3df76-d856-4a61-a6bd-722f52a5be26/PowerPointViewer.exe

cabextract PowerPointViewer.exe
cabextract ppviewer.cab

open CONSOLA*.TTF
