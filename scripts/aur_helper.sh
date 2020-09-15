#!/usr/bin/env bash

[ ! "$#" -eq  "1" ] && echo Provide one AUR package to install && exit 1 

PKG_NAME="$1"

cd $HOME
git clone "https://aur.archlinux.org/$1"
cd "$HOME/$1"

makepkg -sri --noconfirm

cd $HOME
rm -rf "$HOME/$1"