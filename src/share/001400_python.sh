#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root or with sudo"
  exit
fi

add-apt-repository ppa:deadsnakes/ppa

apt-get update

# Python 3.10
apt-get install -y \
  python3 \
  python3-pip \
  python3.10-venv \
  python-is-python3
pip completion --bash | tee /etc/bash_completion.d/pip

# Python 3.9
apt-get install -y \
  python3.9 \
  python3.9-venv
