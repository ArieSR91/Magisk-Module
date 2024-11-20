#!/bin/bash

CRDIR="/home/runner/work/Magisk-Module/Magisk-Module"

function ziping()
{
cd $i
shopt -s extglob
filename=$(echo $i | sed 's:/*$::')
zip -qr $filename *
mv $filename.zip $CRDIR
cd $CRDIR
wget https://raw.githubusercontent.com/ArieSR91/Magisk-Module/refs/heads/main/$filename.zip
rm $filenamey.zip
}

files=$(ls -d1 */)
for i in ${files[@]}; do
    ziping
done
