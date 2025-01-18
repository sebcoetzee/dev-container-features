#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

set -eux

ARCH="$(dpkg --print-architecture)"

echo "Installing common packages..."

apt update
apt install -y stow wget curl

echo "Create .local directory..."

mkdir -p $_REMOTE_USER_HOME/.local/bin
mkdir -p $_REMOTE_USER_HOME/.local/lib
mkdir -p $_REMOTE_USER_HOME/.local/include
mkdir -p $_REMOTE_USER_HOME/.local/share

echo "Installing fzf..."
cd /tmp
curl -L -o fzf.tar.gz https://github.com/junegunn/fzf/releases/download/v${FZF_VERSION}/fzf-${FZF_VERSION}-linux_${ARCH}.tar.gz
tar -xvf fzf.tar.gz
rm fzf.tar.gz
mv fzf /usr/bin/

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

