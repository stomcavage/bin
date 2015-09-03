#!/bin/bash

PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin
BREW='/usr/local/bin/brew'

${BREW} update
${BREW} upgrade
${BREW} cleanup

