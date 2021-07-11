#!/bin/bash

figlet "Install Desktop"

sudo apt-get update -y

DEBIAN_FRONTEND=noninteractive \
    sudo apt-get install -y desktop-base xscreensaver

! "$CI" && DEBIAN_FRONTEND=noninteractive \
    sudo apt-get install -y xfce4

! "$CI" && sudo echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session
