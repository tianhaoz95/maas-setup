#!/bin/bash

function download_and_install { # args URL FILENAME
    curl -L -o "$2" "$1"
    yes | sudo dpkg --install "$2"
    sudo apt-get install -y --fix-broken
}

function download_and_extract { # args URL TEMP_FILENAME TARGET_DIR
    curl -L -o "$2" "$1"
    tar -xzf "$2" -C "$3"
}

function add_path_to_bashrc { # args PATH
    echo "export PATH=$PATH:$1" >> ~/.bashrc
}

function is_installed {  # args PACKAGE_NAME
    sudo dpkg-query --list "$1" | grep -q "^ii" 2>/dev/null
    return $?
}

function maybe_download_and_install { # args PACKAGE_NAME URL FILENAME
    ! is_installed $1 && download_and_install "$2" "$3"
}