set -o xtrace -o nounset -o pipefail -o errexit

# build statically linked binary with Rust
cargo install --locked --root "$PREFIX" --path .

# strip debug symbols
"$STRIP" "$PREFIX/bin/comrak"

# remove extra build file
rm -f "${PREFIX}/.crates.toml"