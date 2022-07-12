#!/bin/bash

# This script should be run as the user so sudo is ok
curl -sSL https://install.python-poetry.org | python3 -
poetry completions bash | sudo tee /etc/bash_completion.d/poetry
