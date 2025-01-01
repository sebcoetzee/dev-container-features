#!/bin/bash
set -eux

echo "Installing Neovim..."

cd ~/
curl -OL https://github.com/neovim/neovim/releases/download/v${VERSION}/nvim-linux64.tar.gz
tar -xvf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz

BASH_SNIPPET='

# Add neovim to the PATH
export PATH="$HOME/nvim-linux64/bin:$PATH"

'

echo "$BASH_SNIPPET" >> ~/.bashrc

