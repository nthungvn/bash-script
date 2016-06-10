#! /bin/sh

is_root() {
  # 1 is false and 0 is true
  if [ $? = 1 ]; then
    echo 'You must unsure you have into sudo group'
    echo 'And you must provide correct your password'
    exit 1
  fi
}

F=/usr/share/apps/gmail-notify
R=icon.png
R_BK=icon.png.bk
UR=icon2.png
UR_BK=icon2.png.bk

cd $F
if [ ! -f $R_BK ]; then
  sudo mv $R $R_BK
  is_root
  echo "$R has change to $R_BK"
fi

if [ ! -f $UR_BK ]; then
  sudo mv $UR $UR_BK
  echo "$UR has change to $UR_BK"
fi

SR=$HOME/.icons/Mint-X/status/24/indicator-messages.svg
SUR=$HOME/.icons/Mint-X/status/24/indicator-messages-new.svg

if [ -f $SR ]; then
  sudo ln -sf $SR $R
else
  echo "$SR not exist"
fi

if [ -f $SUR ]; then
  sudo ln -sf $SUR $UR
else
  echo "$SUR not exist"
fi

