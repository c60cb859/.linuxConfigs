#!/bin/bash

LOCALBINDIR="$HOME/.local"
LINUXCONFIGDIR="$XDG_CONFIG_HOME/.linuxConfigs"

setupZsh ()
{
  echo "Setitng up zsh"

  if [ -f "$HOME/.zshrc" ]; then
    rm $HOME/.zshrc
    touch $HOME/.zshrc
  fi

  if [ -L "$HOME/.zshrc.local" ]; then
    rm $HOME/.zshrc.local
  fi

  ln -s $LINUXCONFIGDIR/zshrc $HOME/.zshrc.local

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
  if [ -f "$XDG_CONFIG_HOME/$1" ]; then
    rm $XDG_CONFIG_HOME/$1
  elif [ -L "$XDG_CONFIG_HOME/$1" ]; then
    rm $XDG_CONFIG_HOME/$1
  elif [ -d "$XDG_CONFIG_HOME/$1" ]; then
    rm -rf $XDG_CONFIG_HOME/$1
  fi

  ln -st $XDG_CONFIG_HOME/ $LINUXCONFIGDIR/$1
}

setupZsh
setupLocalBin
linkConfig alacritty
linkConfig redshift
linkConfig i3
linkConfig i3status-rust
linkConfig rofi
linkConfig tig
linkConfig radare2
linkConfig xsettingsd
linkConfig rizin
