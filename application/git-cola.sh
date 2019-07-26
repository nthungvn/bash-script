#! /bin/sh

sudo apt-get install -y python-qt4 make
git clone git://github.com/git-cola/git-cola.git && cd git-cola
sudo make prefix=/usr install && cd ../ && sudo rm -fr git-cola
