#!/bin/bash
set -e

sudo pacman -S xorg --needed --noconfirm
sudo pacman -S xf86-video-amdgpu --needed --noconfirm
sudo pacman -S mesa --needed --noconfirm
