#! /bin/sh

S=$HOME/Dropbox/Linux/IconThemes/Mint-X
D=/home/nthung/.icons

if [ -d $D ]; then
  mkdir -p $D
fi

if [ -d $D/Mint-X ]; then
  echo 'Your install has exist'
else
  ln -s $S $D
fi

