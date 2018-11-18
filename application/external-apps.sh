#! /bin/sh

### add repository
# skype
wget -qO - https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
echo "deb [arch=amd64] https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skype-stable.list

# sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# chrome
wget -qO - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

# slack
wget -qO - https://packagecloud.io/slacktechnologies/slack/gpgkey | sudo apt-key add -
echo 'deb https://packagecloud.io/slacktechnologies/slack/debian/ jessie main' | sudo tee /etc/apt/sources.list.d/slack.list

# sublime-text
echo 'deb https://download.sublimetext.com/ apt/stable/' | sudo tee /etc/apt/sources.list.d/sublime-text.list

# teamviewer
sudo cp ./teamviewer.repo/teamviewer.list /etc/apt/sources.list.d/
wget -O - https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc | sudo apt-key add -
#echo 'deb http://linux.teamviewer.com/deb preview tv13' | sudo tee /etc/apt/sources.list.d/teamviewer.list

# atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" | sudo tee /etc/apt/sources.list.d/atom.list

# vscode
wget -qO - https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# heroku
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
wget -O - https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -

# slingscold and albert
sudo add-apt-repository ppa:noobslab/macbuntu

# numix icon and theme
sudo add-apt-repository ppa:numix/ppa


sudo apt-get update

### install
sudo apt-get install skypeforlinux
sudo apt-get install google-chrome-stable
sudo apt-get install numix-gtk-theme numix-icon-theme-circle
sudo apt-get install slingscold
sudo apt-get install code
sudo apt-get install sublime-text

## optional package
sudo apt-get install spotify-client
sudo apt-get install slack-desktop
sudo apt-get install atom
sudo apt-get install heroku
sudo apt-get install albert
