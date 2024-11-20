#!/bin/bash

CRDIR=$(pwd)
MODIR="/sdcard/Magisk-Module/"

ziping()
{
    cd $i
    shopt -s extglob
    filename=$(echo $i | sed 's:/*$::')
    echo "Building $filename"
    zip -qr $filename *
    if [ ! -d $MODIR ]; then
        mkdir $MODIR
    fi
    echo "Moving $filename to $MODIR"
    mv $filename.zip $MODIR
    cd $CRDIR
}

files=$(ls -d1 */)
for i in ${files[@]}; do
    ziping
done
