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

sudo pacman -S --noconfirm --needed mousepad thunar-archive-plugin thunar-media-tags-plugin xfburn xfce4-artwork xfce4-clipman-plugin xfce4-datetime-plugin xfce4-mpc-plugin xfce4-netload-plugin xfce4-notifyd xfce4-pulseaudio-plugin xfce4-screenshooter xfce4-sensors-plugin xfce4-time-out-plugin xfce4-taskmanager xfce4-whiskermenu-plugin




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

    sudo pacman -S --noconfirm --needed lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

fi


echo "Display manager being activated"

sudo systemctl enable lightdm.service

echo "Reboot and select the proper desktop environment."

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"

echo "Type sudo reboot"

