#!/bin/bash
set -e
##################################################################################################################
# Author 	: 	Erik Dubois
# Website 	: 	https://www.erikdubois.be
# Website	:	https://www.archmerge.info
# Website	:	https://www.archmerge.com
# Website	:	https://www.archmerged.com
# Website	:	https://www.archmergeforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "ArchMerge Repository"

sudo pacman -S archmerge-pipemenus-git --noconfirm --needed
sudo pacman -S jq --noconfirm --needed
sudo pacman -S archmerge-conky-collection-git --noconfirm --needed

echo "Installing fonts for the conky's"

sudo pacman -S --noconfirm --needed adobe-source-sans-pro-fonts
sudo pacman -S --noconfirm --needed ttf-dejavu
sudo pacman -S --noconfirm --needed ttf-droid
sudo pacman -S --noconfirm --needed ttf-roboto


sh AUR/install-yad-v*.sh

echo "We will now remove the package conky so we can install a conky"
echo " version that supports conky's and LUA - clocks, dials, ..."

#remove conky package if installed
package="conky"

if pacman -Qi $package &> /dev/null; then

        sudo pacman -R conky --noconfirm

fi

sh AUR/install-conky-lua-nv-v*.sh

echo "################################################################"
echo "####     Software from ArchMerge Repository installed       ####"
echo "################################################################"
