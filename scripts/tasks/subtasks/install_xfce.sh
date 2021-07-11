#!/bin/bash

figlet "Install Desktop"

sudo apt-get update -y

DEBIAN_FRONTEND=noninteractive \
    sudo apt-get install -y desktop-base xscreensaver xfce4

sudo echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session
