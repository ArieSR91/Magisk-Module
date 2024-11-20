#!/bin/bash

CRDIR=$(pwd)
MODIR="/sdcard/Magisk-Module/"

ziping()
{
cd $i
shopt -s extglob
filename=$(echo $i | sed 's:/*$::')
zip -qr $filename *

if [ ! -d $MODIR ]; then
    mkdir $MODIR
fi
mv $filename.zip $CRDIR
cd $CRDIR
wget https://github.com/ArieSR91/Magisk-Module/$filename.zip
rm *.zip
}

files=$(ls -d1 */)
for i in ${files[@]}; do
    ziping
done
