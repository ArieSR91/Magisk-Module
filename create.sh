#!/bin/bash

CRDIR=$(pwd)
MODIR="/sdcard/Magisk-Module/"
files=$(ls -d1 */)
select choice in ${files[@]}; do
    break
done

cd $choice
shopt -s extglob
filename=$(echo $choice | sed 's:/*$::')
zip -qr $filename *

if [ ! -d $MODIR ]; then
    mkdir $MODIR
fi
mv $filename.zip $MODIR
cd $CRDIR
