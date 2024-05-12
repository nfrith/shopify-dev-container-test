#!/bin/bash

sudo apt-get update

if ! command -v nvm &> /dev/null; then
    echo "NVM is not installed. Installing..."
    # Download and install NVM (no sudo)
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

    # Set NVM directory (adjust if needed)
    export NVM_DIR="$HOME/.nvm"

    # Source NVM scripts
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  
fi

source ~/.bashrc

nvm install 20.12.2

nvm use 20.12.2

npm install -g @shopify/cli

