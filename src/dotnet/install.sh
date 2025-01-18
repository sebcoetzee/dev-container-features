#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

set -eux

echo "Installing .NET $VERSION to $DOTNET_ROOT..."

cd /tmp
curl --fail -o dotnet.tar.gz -L https://builds.dotnet.microsoft.com/dotnet/Sdk/$VERSION/dotnet-sdk-6.0.428-linux-x64.tar.gz

mkdir -p $DOTNET_ROOT
tar -xvf dotnet.tar.gz -C $DOTNET_ROOT
rm dotnet.tar.gz

