#! /bin/sh

sudo apt-get remove gnome-sudoku gnome-mines pidgin thunderbird parole
sudo apt-get remove sgt-puzzles sgt-launcher xfce4-dict xfburn orage

sudo rm -rf /var/cache/snapd/
sudo apt autoremove --purge snapd gnome-software-plugin-snap
rm -fr ~/snap
