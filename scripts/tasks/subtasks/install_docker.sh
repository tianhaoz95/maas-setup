#!/bin/bash

figlet "Install Docker"

# Install Docker Engine and Docker Compose
# For Docker Engine details, see https://docs.docker.com/engine/install/ubuntu/
# For Docker Compose details, see https://docs.docker.com/compose/install/
function install_docker {
    curl https://get.docker.com | sh && sudo systemctl --now enable docker
    sudo usermod -aG docker $USER
    sudo curl \
        -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" \
        -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
}

install_docker
