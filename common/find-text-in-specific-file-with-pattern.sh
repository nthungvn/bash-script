#Usage:
#$1: a folder will be searched in
#$2: a pattern will use to search

find $1 -type f -exec grep -l $2 {} \;
