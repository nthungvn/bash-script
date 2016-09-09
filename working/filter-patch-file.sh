#Usage:
# This script will filter in patch of diff file to show all files that are modified, added, deleted
# $1: path to file .diff or .patch
cat $1 | grep ^diff | sed -e 's/^diff.* //g'

