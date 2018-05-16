# Docker on Debian installation script

## Quick install
apt update && \
apt install -y git && \
git clone https://github.com/remonlam/docker-install.git
cd docker-install && \
./debian.sh

## Quick install [root]
apt update && \
apt install -y git && \
git clone https://github.com/remonlam/docker-install.git
cd docker-install && \
./debian_root.sh
