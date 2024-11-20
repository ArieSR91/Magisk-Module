#!/bin/bash

CRDIR=$(pwd)

ziping()
{
cd $i
shopt -s extglob
filename=$(echo $i | sed 's:/*$::')
zip -qr $filename *
mv $filename.zip ..
cd ..
wget https://raw.githubusercontent.com/ArieSR91/Magisk-Module/refs/heads/main/$filename.zip
rm $filenamey.zip
}

files=$(ls -d1 */)
for i in ${files[@]}; do
    ziping
done
