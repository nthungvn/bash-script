#! /bin/sh

### add repository
# skype
wget -q -O - https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
# sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt update

### install
sudo apt-get install sublime-text
sudo apt-get install skypeforlinux
sudo apt-get install google-chrome-stable

sudo apt-get install ibus-unikey
sudo apt-get install dropbox nautilus-dropbox

sudo apt-get install nautilus-compare kdiff3-qt
