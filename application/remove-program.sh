#! /bin/sh

sudo apt-get remove thunderbird thunderbird-gnome-support hexchat hexchat-common totem totem-common totem-mozilla totem-plugins totem-plugins-extra firefox-locale-en mint-stylish-addon mintupload mintbackup mintwelcome
#sudo apt-get remove pidgin pidgin-data pidgin-libnotify
# Optional package
sudo apt-get remove tomboy gucharmap gthumb system-config-printer
sudo apt-get remove firefox
if [ $1 ]; then
  sudo rm -fR /usr/lib/firefox
  echo 'Old firefox folder has removed'
fi

