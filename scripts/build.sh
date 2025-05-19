#!/bin/bash

CUR_DIR=$(realpath "$(dirname "${BASH_SOURCE:-$0}")")

function build_avatochat_server() {
    # bash "${CUR_DIR}"/../devenv/avatochat-server/setup.sh
    docker exec avatochat-server-devenv bash -c ". ~/.cargo/env; cd /opt/code; cargo build --release --all-features"
}

build_avatochat_server
