#!/bin/bash

CYAN="\033[1;36m"
NC="\033[1;0m"

update_nano()
{
    MODULE_DIR="nano-ndk"
    CRDIR=$(pwd)
    if [ ! -d $MODULE_DIR ]; then
        git submodule add https://github.com/ArieSR91/$MODULE_DIR
    else
        cd $MODULE_DIR
        echo -e "$CYAN[+] Updating $MODULE_DIR$NC"
        git pull
        cd $CRDIR
    fi
    return 0
}

update_adb()
{
    MODULE_DIR="adb-ndk"
    CRDIR=$(pwd)
    if [ ! -d $MODULE_DIR ]; then
        git submodule add https://github.com/ArieSR91/$MODULE_DIR
    else
        cd $MODULE_DIR
        echo -e "$CYAN[+] Updating $MODULE_DIR$NC"
        git pull
        cd $CRDIR
    fi
    return 0
}

update_busybox()
{
    MODULE_DIR="busybox-ndk"
    CRDIR=$(pwd)
    if [ ! -d $MODULE_DIR ]; then
        git submodule add https://github.com/ArieSR91/$MODULE_DIR
    else
        cd $MODULE_DIR
        echo -e "$CYAN[+] Updating $MODULE_DIR$NC"
        git pull
        cd $CRDIR
    fi
    return 0
}

case $1 in
    adb)
        update_adb
        ;;
    busybox)
        update_busybox
        ;;
    nano)
        update_nano
        ;;
    *)
         update_adb
         update_nano
         update_busybox
         ;;
esac
