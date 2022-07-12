#!/bin/bash

set -e

if [ "$EUID" -ne 0 ]
  then echo "Please run as root or with sudo"
  exit
fi

curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
rm -r awscliv2.zip aws
