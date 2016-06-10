#! /bin/sh

SRC=$HOME/Dropbox/Linux/Gedit/gedit-plugins.32-bit.tar.bz2
DST=/tmp

cd $DST
tar -xvf $SRC
sudo dpkg -i liblaunchpad-integration1_0.1.35_i386.deb
sudo dpkg -i libgucharmap7_2.30.0-0ubuntu1_i386.deb
sudo apt-get install gedit-plugins
#sudo apt-get install libgconf2-4
#sudo dpkg -i gedit-plugins_2.30.0-0ubuntu1_i386.deb

