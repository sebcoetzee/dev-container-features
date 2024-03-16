#!/bin/bash
set -eux

echo "Installing OCaml..."

# Run the install and press Enter via echo
echo -ne '\n' | sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)
sudo -u $_REMOTE_USER opam init --yes --disable-sandboxing
sudo -u $_REMOTE_USER opam env >> $_REMOTE_USER_HOME/.bashrc