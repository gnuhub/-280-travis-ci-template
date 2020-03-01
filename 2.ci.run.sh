#!/usr/bin/env bash
#set -x

export CMD_PATH=$(cd `dirname $0`; pwd)
cd $CMD_PATH
chmod 600 sf
ssh-keyscan "shell.sourceforge.net" >> ~/.ssh/known_hosts
ssh-keyscan "frs.sourceforge.net" >> ~/.ssh/known_hosts
ssh-keyscan "gitlab.com" >> ~/.ssh/known_hosts
ssh-keyscan "github.com" >> ~/.ssh/known_hosts
ssh-keyscan "bitbucket.org" >> ~/.ssh/known_hosts

df -h 

cd ~
ls -al

cd $CMD_PATH

./3.sf.create
./4.sf.sync