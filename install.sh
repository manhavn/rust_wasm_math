#!/bin/bash
# shellcheck disable=SC2164
cd "$(dirname "$0")"

# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
cargo --version

cargo install cargo-generate
cargo install cargo-watch
cargo install trunk
cargo install wasm-pack

cargo install --list

npm i -g serve
