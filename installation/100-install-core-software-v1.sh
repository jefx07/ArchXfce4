#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author    :   Erik Dubois
# Website   :   http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#software from 'normal' repositories
sudo pacman -S --noconfirm --needed adobe-source-code-pro-fonts adobe-source-sans-pro-fonts
sudo pacman -S --noconfirm --needed cantarell-fonts catfish conky curl dconf-editor
sudo pacman -S --noconfirm --needed dmidecode dosfstools evince
sudo pacman -S --noconfirm --needed galculator gksu gnome-keyring gnome-disk-utility gnome-themes-standard
sudo pacman -S --noconfirm --needed gparted gtk-engine-murrine gvfs
sudo pacman -S --noconfirm --needed hardinfo hddtemp htop lm_sensors lsb-release mlocate ntfs-3g
sudo pacman -S --noconfirm --needed polkit-gnome screenfetch scrot
sudo pacman -S --noconfirm --needed wget xdg-user-dirs xf86-input-synaptics youtube-dl
xdg-user-dirs-update
sudo updatedb


###############################################################################################

# installation of zippers and unzippers
sudo pacman -S --noconfirm --needed p7zip unzip zip unrar xarchiver-gtk2

###############################################################################################


echo "################################################################"
echo "###################    core software installed  ################"
echo "################################################################"

