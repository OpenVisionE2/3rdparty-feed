#!/bin/sh

mkdir -p ts
cd ts
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=3 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Plugins/
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=3 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Plugins_IPTV/
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=3 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Plugins_Backup/
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=3 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Plugins_Multiboot/
mv -f *.ipk ../
cd ..
rm -rf ts
