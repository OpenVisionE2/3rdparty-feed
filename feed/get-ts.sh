#!/bin/sh

mkdir -p ts
cd ts
mkdir -p plugins
cd plugins
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=1 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Plugins/
mv -f *.ipk ../
cd ..
mkdir -p pluginsiptv
cd pluginsiptv
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=1 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Plugins_IPTV/
mv -f *.ipk ../
cd ..
mkdir -p pluginsbackup
cd pluginsbackup
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=1 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Plugins_Backup/
mv -f *.ipk ../
cd ..
mkdir -p pluginsmultiboot
cd pluginsmultiboot
wget -c -nH -r -q -l0 -A ipk -np -nd --wait=1 --execute="robots = off" http://tunisia-dreambox.info/TSipanel/Plugins_Multiboot/
mv -f *.ipk ../
cd ..
mv -f *.ipk ../
cd ..
rm -rf ts
