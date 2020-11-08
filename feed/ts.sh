#!/bin/sh

mkdir -p ts
cd ts
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=3 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Plugins/
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=3 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Plugins_IPTV/
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=3 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Plugins_Backup/
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=3 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Plugins_Multiboot/
rename 'y/A-Z/a-z/' *.ipk
mv -f *.ipk ../
cd ..
ls -vr *.ipk | awk -F- '$1 == name{system ("rm \""$0"\"")}{name=$1}'
