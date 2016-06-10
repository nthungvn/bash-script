#! /bin/sh

INPUT=$1
OUTPUT="output"
LINK="http://mp3.zing.vn/download/vip/song"

cd $INPUT

for SONG in `ls *.html`
do
  FULLLINK=$LINK/$SONG
  echo $FULLLINK >> $OUTPUT
  rm -f $SONG
done

echo "`cat $OUTPUT` files"
firefox $OUTPUT
rm -f $OUTPUT

