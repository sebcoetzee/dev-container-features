#!/bin/bash
set -eux

echo "Installing go ${VERSION}"

if ! command -v curl 2>&1 >/dev/null
then
    echo "curl command not found"
    apt update
    apt install -y curl
fi

curl -L -o go.tar.gz "https://go.dev/dl/go${VERSION}.linux-amd64.tar.gz"
rm -rf /usr/local/go && tar -C /usr/local -xzf go.tar.gz
rm go.tar.gz
