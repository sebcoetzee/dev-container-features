#!/bin/bash
set -eux

echo "Installing node v${VERSION}"

curl -fsSL "https://deb.nodesource.com/setup_${VERSION}.x" | sudo -E bash - &&\
apt install -y nodejs