#! /bin/sh
#Usage: this script will help you to remove all interupt file, it means all file may interupt when you copy from another source
# $1: the path that you want to remove interupt file

ls -ahl $1 | grep '^-rwxr' | awk '{print $9}' | tr -d '*' | xargs rm

