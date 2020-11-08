#!/bin/sh

rename 'y/A-Z/a-z/' *.ipk
mkdir -p files
mv -f *.ipk files/
cd files
ls -1  | grep -v '_all' | xargs rm -f
mv -f *.ipk ../
cd ..
rm -rf files
#ls -vr *.ipk | awk -F- '$1 == name{system ("rm \""$0"\"")}{name=$1}'
find . -name '*picons*' -type f | xargs rm -f
