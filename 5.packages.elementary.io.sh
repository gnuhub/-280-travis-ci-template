#!/usr/bin/env bash
#set -x

export CMD_PATH=$(cd `dirname $0`; pwd)
cd $CMD_PATH

wget --mirror -p --convert-links --no-parent  -P ./ http://packages.elementary.io/

rsync -e "ssh -i sf" --exclude "sf" --progress -avz ./packages.elementary.io/ gnuhub@frs.sourceforge.net:/home/frs/project/do365/packages.elementary.io/