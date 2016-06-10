#! /bin/sh
if [ -d /usr/share/WyabdcRealPeopleTTS ]; then
  echo 'Nothing to do!'
else
  sudo ln -s /mnt/Data/home-data/WyabdcRealPeopleTTS /usr/share/WyabdcRealPeopleTTS
  echo 'Ok, you can be quit and re-open stardict to apply'
fi

