# bats-assert-additions

default:
    @just --list

# Check with shellcheck
check:
    nix develop --command shellcheck load.bash src/*.bash

# Format with shfmt
fmt:
    nix develop --command shfmt -w -i 2 -ci load.bash src/*.bash

# Clean build artifacts
clean:
    rm -rf result
