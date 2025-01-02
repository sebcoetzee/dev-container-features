#!/bin/bash
set -eux

echo "Installing common packages..."

apt update
apt install -y tmux stow wget

