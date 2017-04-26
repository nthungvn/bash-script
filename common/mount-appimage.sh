#! /bin/sh

# Usage:
# $1: The AppImage file
# $2: The mount folder

sudo mount -o loop $1 $2


# Ubuntu, RedHat, Suse/OpenSuse, Debian, Fedora
# AppImage app can run simple standalone executable successfully with steps:
# 1. Download AppImage file
# 2. In command line, cd to directory containing Sky AppImage
# 3. Run: $chmod + x app.AppImage
# 4. Run: $./app.AppImage