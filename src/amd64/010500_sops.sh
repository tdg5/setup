#!/bin/bash

set -e

OUTPUT_FILE="sops_3.7.2_amd64.deb"
curl --location -o "$OUTPUT_FILE" "https://github.com/mozilla/sops/releases/download/v3.7.2/sops_3.7.2_amd64.deb"
sudo dpkg -i "$OUTPUT_FILE"
rm "$OUTPUT_FILE"
