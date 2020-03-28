#!/bin/bash

wget -O zoom.deb https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install dconf-cli gir1.2-ibus-1.0 ibus libibus-1.0-5 libxcb-xtest0
sudo apt install ./zoom_amd64.deb
rm -fr zoom.deb
