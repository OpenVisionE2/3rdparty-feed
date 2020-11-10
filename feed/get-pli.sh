#!/bin/sh

mkdir -p pli
cd pli
wget http://downloads.openpli.org/feeds/openpli-8-release/3rd-party/Packages.gz
gzip -d Packages.gz
find -type f -name "*Packages*" | xargs -L1 sed -i '/^Filename: /p'
sed -n '/^Filename: /p' Packages > Packages-files
rm -f Packages
find -type f -name "*Packages*" | xargs -L1 sed -i 's|Filename: |http://downloads.openpli.org/feeds/openpli-7-release/3rd-party/|g'
wget --wait=1 -i Packages-files
mv -f *.ipk ../
cd ..
rm -rf pli
