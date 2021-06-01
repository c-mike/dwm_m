#!/bin/bash

#                                           dependencias
echo "Dependencias: [xorg-xinit]"
if ! [ "pacman -Qs xorg-xinit " ]
then
   echo "so na instala dependencias"
   sudo pacman -S xorg-xinit
fi

#                                           top bar
./bar_install

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
echo "so na configura xsessions..."
if ! [ -e /usr/share/xsessions/dwm.desktop ];
then
   sudo cp dwm.desktop /usr/share/xsessions/
fi

#                                           installation
echo "so na instala..."
sudo make clean install
