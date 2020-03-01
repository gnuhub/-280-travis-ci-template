#!/usr/bin/env bash
#set -x

export CMD_PATH=$(cd `dirname $0`; pwd)
cd $CMD_PATH

cd ~

alias wgetmir='wget --mirror -p --convert-links --no-parent  -P'

wgetmir ./ http://packages.elementary.io/
