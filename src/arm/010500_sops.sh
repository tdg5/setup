#!/bin/bash

set -e

OUTPUT_FILE="sops.deb"
curl --location -o "$OUTPUT_FILE" "https://github.com/mozilla/sops/releases/download/v3.7.3/sops_3.7.3_arm64.deb"
sudo dpkg -i "$OUTPUT_FILE"
rm "$OUTPUT_FILE"
