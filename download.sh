#!/bin/bash

CRDIR=$(pwd)

ziping()
{
cd $i
shopt -s extglob
filename=$(echo $i | sed 's:/*$::')
zip -qr $filename *
mv $filename.zip $CRDIR
cd $CRDIR
wget ./$filename.zip
rm *.zip
}

files=$(ls -d1 */)
for i in ${files[@]}; do
    ziping
done
