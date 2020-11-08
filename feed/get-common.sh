#!/bin/sh

rename 'y/A-Z/a-z/' *.ipk
#ls -1 | grep .ipk | grep -v '_all' | xargs rm -f
ls -vr *.ipk | awk -F- '$1 == name{system ("rm \""$0"\"")}{name=$1}'
find . -name '*picons*' -type f | xargs rm -f
