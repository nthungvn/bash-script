#! /bin/bash

# Get directly download link
browser_download_url=`wget -qO- https://api.github.com/repos/gitahead/gitahead/releases/latest | grep browser_download_url | grep .sh`
browser_download_url=`echo $browser_download_url | sed 's/"browser_download_url": "//g' | sed 's/.sh"/.sh/g'`

# Download and install
install_dir=$HOME/Applications
wget -O $install_dir/GitAhead.sh $browser_download_url && cd $install_dir && bash $install_dir/GitAhead.sh

rm $install_dir/GitAhead.sh
