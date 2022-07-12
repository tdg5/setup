#!/bin/bash

TERRAFORM_VERSION='1.2.4'
curl -o terraform.zip "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_arm64.zip"
unzip terraform.zip
rm terraform.zip
mkdir -p $HOME/bin/
mv terraform $HOME/bin/terraform
