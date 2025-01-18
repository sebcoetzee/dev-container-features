#!/bin/bash

set -e

source dev-container-features-test-lib

check "dotnet version" dotnet --version
check "DOTNET_ROOT is set" test -n "${DOTNET_ROOT}"

reportResults
