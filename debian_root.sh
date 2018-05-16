#!/bin/sh

# Update the package index;
apt update

# Install dependencies;
apt install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common

# Add the Docker GPG key;
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# Add the Docker repository;
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# Update the package index;
apt update

# Install Docker;
apt install -y docker-ce

# Show Docker version;
docker version
