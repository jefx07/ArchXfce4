#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


echo "################################################################"
echo "xfce4"   
echo "################################################################"


package="xfce4"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

    echo "################################################################"
    echo "################## "$package" is already installed"
    echo "################################################################"

else

    sudo pacman -S --noconfirm --needed xfce4

fi




echo "################################################################"
echo "xfce4-goodies"   
echo "################################################################"

sudo pacman -S --needed xfce4-clipman-plugin xfce4-notifyd xfce4-screenshooter xfce4-taskmanager xfce4-whiskermenu-plugin thunar-archive-plugin

echo "################################################################"
echo "lightdm"
echo "################################################################"

package="lightdm"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

    echo "################################################################"
    echo "################## "$package" is already installed"
    echo "################################################################"

else

    sudo pacman -S --needed lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

fi


echo "Display manager being activated"

sudo systemctl enable lightdm.service

echo "Reboot and select the proper desktop environment."

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"

echo "Type sudo reboot"

