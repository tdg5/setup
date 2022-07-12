#!/bin/bash

curl \
  --location \
  -o kustomize.tar.gz \
  'https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv4.5.5/kustomize_v4.5.5_linux_arm64.tar.gz'
tar -xzf kustomize.tar.gz
mv kustomize ~/bin/
rm kustomize.tar.gz
