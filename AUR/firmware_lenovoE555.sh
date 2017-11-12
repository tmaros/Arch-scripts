#!/bin/bash
set -e
#lib needed for these two firmwares
sudo pacman -S lib32-glibc --needed --noconfirm
#firmwares missing on LenovoE555
packer -S wd719x-firmware aic94xx-firmware --noedit --noconfirm
