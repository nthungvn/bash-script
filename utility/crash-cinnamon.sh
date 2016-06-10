#! /bin/sh

#Usage: Just run this script, it will find the target file make your account is crashed then remove it
FILE=$HOME/.config/monitors.xml
if [ -f $FILE ]; then
  rm -f $FILE
fi

FILE=$HOME/.config/monitors.xml.backup
if [ -f $FILE ]; then
  rm -f $FILE
fi

gnome-session-quit --no-prompt

