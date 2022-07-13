#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root or with sudo"
  exit
fi

apt-get install -y \
  git \
  git-lfs \
  htop \
  jq \
  net-tools \
  unzip
