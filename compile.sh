#!/bin/bash
# ProgramBench-style build: must produce ./executable at the repo root.
# solar is a workspace; the CLI binary `solar` lives in crates/solar.
set -e
cd "$(dirname "$0")"
cargo build --release --bin solar
cp "target/release/solar" executable
