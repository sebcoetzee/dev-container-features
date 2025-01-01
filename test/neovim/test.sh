#!/bin/bash

set -e

source dev-container-features-test-lib

check "Neovim version" nvim --version
if ! env | grep --quiet '^PATH=.*\/nvim-linux64\/bin'; then
	echo "~/nvim-linux64/bin not added to the PATH"
fi

reportResults
