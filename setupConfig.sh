#!/bin/bash

# Config
# Test if file/folder/symlink exists
# Delete if true
# create new symlink

# Alacritty
mkdir -p /home/$USER/.config/alacritty
rm /home/$USER/.config/alacritty/alacritty.yml
ln -s /home/$USER/.config/.linuxConfigs/alacritty.yml /home/$USER/.config/alacritty/alacritty.yml

# zsh
rm /home/$USER/.zshrc.local
rm /home/$USER/.zshrc
ln -s /home/$USER/.config/.linuxConfigs/zshrc /home/$USER/.zshrc.local
touch /home/$USER/.zshrc

sudo usermod --shell /bin/zsh $USER

# bat
mkdir -p /home/$USER/.config/bat
rm /home/$USER/.config/bat/config
ln -s /home/$USER/.config/.linuxConfigs/bat.conf /home/$USER/.config/bat/config

# Redshift
mkdir -p /home/$USER/.config/redshift
rm /home/$USER/.config/redshift/redshift.conf
ln -s /home/$USER/.config/.linuxConfigs/redshift.conf /home/$USER/.config/redshift/redshift.conf

# i3
rm /home/$USER/.config/i3
ln -st /home/$USER/.config/ /home/$USER/.config/.linuxConfigs/i3

# rofi
rm /home/$USER/.config/rofi
ln -st /home/$USER/.config/ /home/$USER/.config/.linuxConfigs/rofi

# i3status-rust
rm /home/$USER/.config/i3status-rust
ln -st /home/$USER/.config/ /home/$USER/.config/.linuxConfigs/i3status-rust

# local scripts
rm /home/$USER/.local/bin
ln -st /home/$USER/.local/ /home/$USER/.config/.linuxConfigs/bin
