#!/bin/bash

set -e

source dev-container-features-test-lib

check "Go version" go version
check "GOROOT is set" test -n "${GOROOT}"
check "GOPATH is set" test -n "${GOPATH}"

reportResults