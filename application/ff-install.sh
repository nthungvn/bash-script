#! /bin/sh

# Usage: This script will help you to remove all previous firefox's install and will install the latest firefox version

is_root() {
	# 1 is false and 0 is true
	if [ $? = 1 ]; then
		echo 'You must unsure you have into sudo group'
		echo 'And you must provide correct your password'
		exit 1
	fi
}

# Remove firefox first
sudo apt-get remove firefox

source=`pwd`

if [ ! -d $source/firefox ]; then
	download_name="firefox.tar.bz2"
	wget -O $download_name "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US"
	tar xvjf $download_name
	rm $download_name
fi

# Install new firefox by package
if [ -d $source/firefox ]; then
	cp firefox.sh $source/firefox
	ff_folder='/usr/lib/firefox'
	if [ -d $ff_folder ]; then
		sudo rm -f -r $ff_folder
		is_root
	fi
	cd $source
	sudo mv firefox /usr/lib
	is_root
	if ! which firefox; then
		sudo ln -s $ff_folder/firefox.sh /usr/bin/firefox
		is_root
	fi
	echo 'Install successfully'
else
	echo 'No install file or extract folder. Please download the installation file first'
	exit 1
fi

# Install shortcut to open application
if [ -f ./firefox.desktop ]; then
	sudo desktop-file-install ./firefox.desktop
	echo "Install shortcut successfully"
	is_root
fi
