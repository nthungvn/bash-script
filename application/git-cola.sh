#! /bin/sh

sudo apt-get install python-qt4
git clone git://github.com/git-cola/git-cola.git && cd git-cola
sudo make prefix=/usr install && cd ../ && sudo rm -fr git-cola
