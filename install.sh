#!/bin/bash


#                                           xprofile
echo "so na configura xprofile..."
if ![ -e ~/.xprofile ];
then
   cp .xprofile ~/
fi

#                                           session configuration
echo "so na configura xsessions..."
if ![ -e /usr/share/xsessions/dwm.desktop ];
then
   sudo cp dwm.desktop /usr/share/xsessions/
fi

#                                           installation
#echo "so na instala..."
sudo make clean install
