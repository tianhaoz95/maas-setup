#!/bin/bash

figlet "Install TeamViewer"

maybe_download_and_install \
    teamviewer \
    https://download.teamviewer.com/download/linux/teamviewer_amd64.deb \
    /tmp/teamviewer_amd64.deb
