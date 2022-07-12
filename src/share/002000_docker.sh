#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root or with sudo"
  exit
fi

# Update the apt package index and install packages to allow apt to use a
# repository over HTTPS
apt-get update
apt-get install -y ca-certificates curl gnupg lsb-release

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
  gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Setup the stable repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the apt package index, and install the latest version of Docker Engine
# and containerd
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io
