#!/bin/bash

INSTALLATION_SCRIPT_URL='https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64'
DESTINATION_PATH="$HOME/bin/argocd"
mkdir -p "$HOME/bin"
curl -sSL -o "$DESTINATION_PATH" "$INSTALLATION_SCRIPT_URL"
chmod +x "$DESTINATION_PATH"
argocd completion bash | sudo tee /etc/bash_completion.d/argocd
