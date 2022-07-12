#!/bin/bash

# This script should be run as the user so sudo is ok
sudo apt-get install -y python3 python3 python3-pip python3.10-venv
curl -sSL https://install.python-poetry.org | python3 -
poetry completions bash | sudo tee /etc/bash_completion.d/poetry
