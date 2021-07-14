#!/bin/bash

# Install Android Studio
# For details, see:
# https://developer.android.com/studio#downloads
function download_and_extract_android_studio {
    LINUX_ANDROID_STUDIO_DOWNLOAD_URL="https://redirector.gvt1.com/edgedl/android/studio/ide-zips/4.2.2.0/android-studio-ide-202.7486908-linux.tar.gz"
    ANDROID_STUDIO_INSTALL_DIR="$HOME/tools"
    ANDROID_PLATFORM_TOOLS_INSTALL_DIR="$HOME/Android/Sdk/platform-tools"
    add_path_to_bashrc "$ANDROID_STUDIO_INSTALL_DIR/android-studio/bin"
    add_path_to_bashrc "$ANDROID_PLATFORM_TOOLS_INSTALL_DIR"
    mkdir -p $ANDROID_STUDIO_INSTALL_DIR
    download_and_extract \
        $LINUX_ANDROID_STUDIO_DOWNLOAD_URL \
        /tmp/android-studio-ide-202.7486908-linux.tar.gz \
        $ANDROID_STUDIO_INSTALL_DIR
}

download_and_extract_android_studio

# Install Scrcpy
# For details, see: https://github.com/Genymobile/scrcpy
sudo apt-get update -y
sudo apt-get install -y scrcpy

# Install Visual Studio Code
# For details, see: https://snapcraft.io/code and https://code.visualstudio.com/download
sudo snap install code --classic

# Install Flutter SDK
# For details, see: https://flutter.dev/docs/get-started/install/linux
sudo snap install flutter --classic