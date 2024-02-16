#!/bin/bash
set -eux

echo "Installing python: ${VERSION}"

# Install python
apt update
apt install -y software-properties-common
add-apt-repository -y ppa:deadsnakes/ppa
apt update
apt install -y "python${VERSION}" "python${VERSION}-venv" "python${VERSION}-dev" "python${VERSION}-distutils"

eval "python${VERSION} -m ensurepip --upgrade"
