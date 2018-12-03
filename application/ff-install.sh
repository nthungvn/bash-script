#! /bin/sh

# Usage: This script will help you to remove all previous firefox's install and will install new firefox based on a path
# you input
# $1 Path to firefox package, it will be extract to approximate location
# $1 is folder that content firefox binnary
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

# Install new firefox by package
if [ -d $1/firefox ]; then
  cp firefox.sh $1/firefox
  ff_folder='/usr/lib/firefox'
  if [ -d $ff_folder ]; then
    sudo rm -f -r $ff_folder
    is_root
  fi
  cd $1
  sudo mv firefox /usr/lib
  is_root
  if ! which firefox; then
    sudo ln -s $ff_folder/firefox.sh /usr/bin/firefox
    is_root
  fi
  echo 'OK'
else
  echo 'Please choose a folder that content firefox binary'
  exit 1
fi

# Install shortcut to open application
if [ -f ./firefox.desktop ]; then
  sudo desktop-file-install ./firefox.desktop
  echo "Install shortcut successfully"
  is_root
fi
# https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US
