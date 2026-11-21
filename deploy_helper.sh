#!/usr/bin/env bash
set -e
LIB="triple-harbor.a"
TAG="golden-comet-golden-delta"
REPO="lolaregadsm/libstuffeddome"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
