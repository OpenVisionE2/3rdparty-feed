#!/bin/sh

cd feed
find . -name '*.ipk' -type f | xargs rm -f
find . -name '*Packages*' -type f | xargs rm -f

git clone --depth 1 https://github.com/oe-alliance/3rdparty-plugins.git
cd 3rdparty-plugins
mv -f *.ipk ../
cd ..
rm -rf 3rdparty-plugins
