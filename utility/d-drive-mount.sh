#! /bin/sh
if [ ! -d /run/media/nthung/Document ]; then
	sudo mkdir -p /run/media/nthung/Document
fi
#sudo mount /dev/sda6 /run/media/nthung/Document
sudo mount -t ntfs -o uhelper=udisks2,nodev,nosuid,uid=1000,gid=1000,dmask=0077,fmask=0177 /dev/sda6 /run/media/nthung/Document
