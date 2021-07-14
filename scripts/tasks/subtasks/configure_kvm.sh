#!/bin/bash

figlet "Configure KVM"

# Configure KVM for Android emulator
# For details, see:
# https://help.ubuntu.com/community/KVM/Installation
function configure_kvm_for_android_emulator {
    sudo apt-get install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
    sudo adduser `id -un` libvirt
    sudo adduser `id -un` kvm
}

configure_kvm_for_android_emulator
