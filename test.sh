#!/bin/bash

USERDIR="/home/$USER"
CONFIGDIR="$USERDIR/.config"
LOCALBINDIR="$USERDIR/.local"
LINUXCONFIGDIR="$CONFIGDIR/.linuxConfigs"

setupZsh ()
{
  echo "Setitng up zsh"

  if [ -f "$USERDIR/.zshrc" ]; then
    rm $USERDIR/.zshrc
    touch $USERDIR/.zshrc
  fi

  if [ -e "$USERDIR/.zshrc.local" ]; then
    rm $USERDIR/.zshrc.local
  fi

  ln -s $LINUXCONFIGDIR/zshcr $USERDIR/.zshrc.local

  if [ "$SHELL" != "/bin/zsh" ]; then
    sudo usermod --shell /bin/zsh $USER
  fi
}

setupLocalBin ()
{
  echo "Setting up local bin"
  if [ -d "$LOCALBINDIR/bin" ]; then
    rm $LOCALBINDIR/bin
  fi

  ln -st $LOCALBINDIR/ $LINUXCONFIGDIR/bin
}

linkConfig ()
{
  echo "Linking $1"
  if [ -f "$CONFIGDIR/$1" ]; then
    rm $CONFIGDIR/$1
  elif [ -L "$CONFIGDIR/$1" ]; then
    rm $CONFIGDIR/$1
  elif [ -d "$CONFIGDIR/$1" ]; then
    rm -rf $CONFIGDIR/$1
  fi

  ln -st $CONFIGDIR/ $LINUXCONFIGDIR/$1
}

setupZsh
setupLocalBin
linkConfig alacritty
linkConfig bat
linkConfig redshift
linkConfig i3
linkConfig i3status-rust
linkConfig rofi
