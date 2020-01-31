#!/bin/bash

# We download the link content actually link to playlist
wget -q $1

# We get actually link to playlist or music file mix with 'ghost' characters
cat *.html* | grep player.peConfig.xmlURL | sed 's/\<player.peConfig.xmlURL\>//g' | tr -d ' \";' | sed 's/^=//g' | xargs wget -q

# We remove all 'ghost' characters and save the playlist to file
cat xml* | grep .mp3 | tr -d ' ' | sed 's/CDATA//g' | tr -d '[]' | sed 's/^<!//g' | sed 's/^--//g' | sed 's/>$//g' | sed 's/--$//g' > playlist

# We count number of music file in the list
echo "`wc -l playlist`s"

function get_name() {
	ORIGINAL_NAME=$1
	REGEX="([a-zA-Z://\._0-9\-]*)/([a-zA-Z0-9\-]*).mp3"
	if [[ $ORIGINAL_NAME =~ $REGEX ]]; then
		echo "${BASH_REMATCH[2]}.mp3"
	else
		echo $ORIGINAL_NAME
	fi
}

# We download the playlist to our disk
for MUSIC in `cat playlist`
do
	SHORT_NAME=`get_name $MUSIC`
	# echo $SHORT_NAME
	wget $MUSIC -O $SHORT_NAME
done

# We remove all temp files
rm -f playlist *.html* xml*

