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

# Add the Docker repository;
udo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# Update the package index;
sudo apt update

# Install Docker;
sudo apt install -y docker-ce
