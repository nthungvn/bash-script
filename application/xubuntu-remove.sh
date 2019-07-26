#! /bin/sh

sudo apt-get remove -y gnome-sudoku gnome-mines pidgin thunderbird parole
sudo apt-get remove -y sgt-puzzles sgt-launcher xfce4-dict xfburn orage

sudo rm -rf /var/cache/snapd/
sudo apt-get autoremove -y --purge snapd gnome-software-plugin-snap
rm -fr ~/snap
