#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

set -eux

echo "Installing common packages..."

apt update
apt install -y stow wget

# tmux install from source
apt install -y libevent-dev ncurses-dev build-essential bison pkg-config

wget "https://github.com/tmux/tmux/releases/download/$TMUX_VERSION/tmux-$TMUX_VERSION.tar.gz"

tar -xvf "tmux-$TMUX_VERSION.tar.gz"
rm "tmux-$TMUX_VERSION.tar.gz"
cd "tmux-$TMUX_VERSION"
./configure
make && make install

cd ..
rm -rf "tmux-$TMUX_VERSION"

