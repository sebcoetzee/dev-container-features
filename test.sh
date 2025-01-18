#!/bin/bash

set -e

devcontainer features test --base-image mcr.microsoft.com/devcontainers/base:ubuntu-22.04 --remote-user vscode
