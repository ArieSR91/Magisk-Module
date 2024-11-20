#!/bin/bash

CRDIR=$(pwd)

ziping()
{
cd $i
shopt -s extglob
filename=$(echo $i | sed 's:/*$::')
zip -qr $filename * | wget
cd $CRDIR
wget https://raw.githubusercontent.com/ArieSR91/Magisk-Module/refs/heads/main/$filename.zip
rm *.zip
}

files=$(ls -d1 */)
for i in ${files[@]}; do
    ziping
done
