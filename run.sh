#!/bin/bash
# shellcheck disable=SC2091
# shellcheck disable=SC2164
cd "$(dirname "$0")"

wasm-pack build --target web

$(cargo watch -w src -w Cargo.toml -s "clear && wasm-pack build --target web")&
$(sleep 1;open http://localhost:8080)&

serve -p 8080
