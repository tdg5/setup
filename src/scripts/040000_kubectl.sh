#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root or with sudo"
  exit
fi

apt-get update
apt-get install -y apt-transport-https ca-certificates curl
curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | \
  tee /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubectl
