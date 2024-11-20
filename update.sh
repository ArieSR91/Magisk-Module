#!/bin/bash

CYAN="\033[1;36m"
NC="\033[1;0m"
CRDIR=$(pwd)

update_nano()
{
    MODULE_DIR="nano-ndk"
    if [ ! -d $MODULE_DIR ]; then
        git submodule add --force https://github.com/Magisk-Modules-Repo/$MODULE_DIR
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
    if [ ! -d $MODULE_DIR ]; then
        git submodule add --force https://github.com/Magisk-Modules-Repo/$MODULE_DIR
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
    if [ ! -d $MODULE_DIR ]; then
        git submodule add --force https://github.com/Magisk-Modules-Repo/$MODULE_DIR
    else
        cd $MODULE_DIR
        echo -e "$CYAN[+] Updating $MODULE_DIR$NC"
        git pull
        cd $CRDIR
    fi
    return 0
}

update_bash()
{
    MODULE_DIR="bash-ndk"
    if [ ! -d $MODULE_DIR ]; then
        git submodule add --force https://github.com/ArieSR91/bash-ndk
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
    bash)
        update_bash
        ;;
    *)
         update_adb
         update_bash
         update_busybox
         update_nano
         ;;
esac
