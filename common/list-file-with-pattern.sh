#! /bin/sh

#Usage: List file in specific folder with pattern
# $1: Folder
# $2: Pattern
ls -l $1 | grep $2 | awk '{ print $NF }'
