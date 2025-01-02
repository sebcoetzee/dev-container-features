#!/bin/bash

set -e

source dev-container-features-test-lib

check "wget version" wget --version
check "stow version" stow --version
check "tmux version" tmux -V

reportResults
