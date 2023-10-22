#!/usr/bin/zsh

rsync -aHAXv $2 ivo:/mnt/ice3/$1

rm -rfv $2
