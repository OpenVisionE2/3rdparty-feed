#!/bin/sh

cd feed
rename 'y/A-Z/a-z/' *.ipk
rm -f *overlayhd*
rm -f *drivers*
rm -f *youtube*
rm -f *enigma2-plugin-extensions-vcs*
rm -f *tmbd*
rm -f *subssupport*
rm -f *mytube*
rm -f *enhancedmoviecenter*
rm -f *dreamplex*
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

find . -name '*.ipk' -size +98M | xargs rm -f
chmod 755 IPKFeedGenerator.jar
java -jar IPKFeedGenerator.jar
cd ..
git checkout master
git add -u
git add *
git commit -m "Fetch latest plugin files."
