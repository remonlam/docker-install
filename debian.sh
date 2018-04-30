#!/bin/sh

# Update the package index;
sudo apt update

# Install dependencies;
sudo apt install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common

# Add the Docker GPG key;
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
