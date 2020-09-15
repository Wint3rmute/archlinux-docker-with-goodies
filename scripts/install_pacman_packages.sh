#!/usr/bin/env bash

AUR_PACKAGES="base-devel"
DEVEL_PACKAGES="gcc make cmake git"
PYTHON_PACKAGES="python-virtualenv python-pip"
DEVEL_UTILITIES="astyle doxygen socat"
GENERAL_UTILITIES="psmisc which sudo wget openssh"

pacman -Syu $AUR_PACKAGES $DEVEL_PACKAGES $PYTHON_PACKAGES $DEVEL_UTILITIES $GENERAL_UTILITIES --noconfirm
