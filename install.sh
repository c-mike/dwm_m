#!/bin/bash

#                                           dependencias
#  libxft-bgra picom
# echo "Dependencias: [xorg-xinit]"
# if ! [ "pacman -Qs xorg-xinit " ]; then
#    echo "so na instala dependencias..."
#    sudo pacman -S xorg-xinit
# fi

#                                           top bar

echo "so na installa ddwmblocks..."
./bar_install.sh

#                                           config
echo "so na copia config pa orig file..."
sudo cp config.def.h config.h

#                                           xprofile
echo "so na configura xprofile..."
# if ! [ -e ~/.xprofile ];
# then
#    cp .xprofile ~/
# fi
cp .xprofile ~/

#                                           session configuration
if ! [ -e /usr/share/xsessions/dwm.desktop ]; then
   echo "so na configura xsessions..."
   sudo cp dwm.desktop /usr/share/xsessions/
fi

#                                           installation
echo "so na instala..."
sudo make clean install
