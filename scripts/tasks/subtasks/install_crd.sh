#!/bin/bash

figlet "Install CRD"

sudo apt-get update -y

maybe_download_and_install \
    chrome-remote-desktop \
    https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb \
    /tmp/chrome-remote-desktop_current_amd64.deb
