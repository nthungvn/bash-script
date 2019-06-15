#! /bin/bash

# Download
download_name="Postman-linux-x64.tar.gz"
wget -O $download_name "https://dl.pstmn.io/download/latest/linux64"
tar xvzf $download_name
rm $download_name

# Install
mv Postman ~/Applications
cp resources/appicons/postman.desktop ~/.local/share/applications
