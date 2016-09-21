#! /bash/sh

FILE_PARSING=$1
START_REVISION=$2
END_RESVISON=$3
OUTPUT_DIFF=$4
PREFIX_DELETE=$5

IS_VALUE=true

if [ -z "$FILE_PARSING" ]; then
	IS_VALUE=false
fi

if [ -z "$START_REVISION" ]; then
	IS_VALUE=false
fi

if [ -z "$END_RESVISON" ]; then
	IS_VALUE=false
fi

if [ -z "$OUTPUT_DIFF" ]; then
	IS_VALUE=false
fi

if [ $IS_VALUE = false ]; then
	echo "Usage: $0 Filename StartRevision EndRevision OutputDiff [PrefixDelete]"
	echo "\tFilename: File's name include list files"
	echo "\tStartRevision: Start revision number"
	echo "\tEndRevision: End revsion number (Start < End)"
	echo "\tOutputDiff: File's name that output diff file when run 'hg diff'"
	echo "\tPrefix: Prefix string in 'Filename' will be ingore when generating command"
	exit 0
fi

OUTPUT="$(echo -n "hg diff -r $START_REVISION:$END_RESVISON > $OUTPUT_DIFF.diff -I "
cat $FILE_PARSING | sed '/^$/d' | sed 's/\\/\//g' | sed ':a;N;$!ba;s/\n/ -I /g')"


if [ ! -z "$PREFIX_DELETE" ]; then
	PREFIX_DELETE=$(echo $PREFIX_DELETE | sed 's/\\/\\\//g')
	echo $OUTPUT | sed "s/$PREFIX_DELETE//g"
else
	echo $OUTPUT
fi

