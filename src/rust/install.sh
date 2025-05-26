#!/bin/bash

set -eux

echo "Installing Rust using rustup"

curl -o /tmp/rustup-init -L https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init

chmod u+x /tmp/rustup-init

/tmp/rustup-init -y

rm /tmp/rustup-init
