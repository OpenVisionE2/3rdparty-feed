#!/bin/sh

rename 'y/A-Z/a-z/' *.ipk
find . -name '*picons*' -type f | xargs rm -f
mkdir -p files
mv -f *.ipk files/
cd files
ls -1  | grep -v '_all' | xargs rm -f
mv -f *.ipk ../
cd ..
rm -rf files
for file in $(ls *.ipk | awk -F'_' '{print $1}' | sort -u)
do
    count=$(ls ${file}* | wc -l)
    if [ ${count} -gt 1 ]; then
        ls -rv ${file}* | tail -$(($count-1)) | xargs rm
    fi
done
