#!/bin/bash

set -e

source dev-container-features-test-lib

_REMOTE_USER=vscode
LOCAL_DIR=/home/$_REMOTE_USER/.local
check ".local directory exists" test -d $LOCAL_DIR
check ".local directory has remote user owner" test $(stat -c "%U" $LOCAL_DIR) == "$_REMOTE_USER"
check ".local directory has remote group owner" test $(stat -c "%G" $LOCAL_DIR) == "$_REMOTE_USER"

check "fzf version" fzf --version
check "wget version" wget --version
check "stow version" stow --version
check "tmux version" tmux -V

reportResults
