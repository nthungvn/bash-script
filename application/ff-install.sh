#! /bin/sh

# Usage: This script will help you to remove all previous firefox's install and will install new firefox based on a path
# you input
# $1 Path to firefox package, it will be extract to approximate location
is_root() {
  # 1 is false and 0 is true
  if [ $? = 1 ]; then
    echo 'You must unsure you have into sudo group'
    echo 'And you must provide correct your password'
    exit 1
  fi
}

apt remove firefox
# $1 is folder that content firefox binnary
if [ -d $1/firefox ]; then
  cp firefox.sh $1/firefox
  ff_folder='/usr/lib/firefox'
  if [ -d $ff_folder ]; then
    sudo rm -f -r $ff_folder
    is_root
  fi
  cd $1
  sudo mv firefox /usr/lib
  if [ -f ./firefox.desktop ]; then
  	sudo cp ./firefox.desktop /usr/share/applications/
  	is_root
  fi
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

