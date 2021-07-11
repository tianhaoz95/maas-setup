#!/bin/bash

figlet "Install Nvdia Docker"

# Install CUDA Toolkit for containers
# For details, see https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker
function install_nvidia_docker {
    distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
    curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
    curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list \
        | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
    sudo apt-get update -y
    sudo apt-get install -y nvidia-docker2
}

! is_installed nvidia-docker2 && install_nvidia_docker
