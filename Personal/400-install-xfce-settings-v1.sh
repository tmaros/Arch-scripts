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

echo "Installing xfce settings"

[ -d $HOME"/.config/xfce4" ] || mkdir -p $HOME"/.config/xfce4"
cp -rf settings/xfce4/* ~/.config/xfce4/

echo "################################################################"
echo "#########      xfce files copied                ################"
echo "################################################################"
