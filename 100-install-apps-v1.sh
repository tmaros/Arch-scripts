#!/bin/bash
set -e #stop script if there is error

sudo pacman -S reflector --needed --noconfirm
sudo pacman -S bash-completion --needed --noconfirm
sudo pacman -S brasero --needed --noconfirm

#Installing AUR
packer -S etcher --noedit --noconfirm
packer -S dropbox --noedit --noconfirm
