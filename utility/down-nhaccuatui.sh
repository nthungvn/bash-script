# We download the link content actually link to playlist
wget -q $1

# We get actually link to playlist or music file mix with 'ghost' characters
cat *.html* | grep player.peConfig.xmlURL | sed 's/\<player.peConfig.xmlURL\>//g' | tr -d ' \";' | sed 's/^=//g' | xargs wget -q

# We remove all 'ghost' characters and save the playlist to file
cat xml* | grep .mp3 | tr -d ' ' | sed 's/CDATA//g' | tr -d '[]' | sed 's/^<!//g' | sed 's/^--//g' | sed 's/>$//g' | sed 's/--$//g' > playlist

# We count number of music file in the list
echo "`wc -l playlist`s"

# We download the playlist to our disk
for MUSIC in `cat playlist`
do
	wget $MUSIC
done

# We remove all temp files
rm -f playlist *.html* xml*

