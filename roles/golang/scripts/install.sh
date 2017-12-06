#!/usr/bin/env bash

# Check for the latest version of Golang
go_latest=$(curl -s 'https://golang.org/VERSION?m=text')

# Determine the version to download
os_family=$(uname -s | tr '[:upper:]' '[:lower:]')
os_arch=$(uname -m | sed -e 's/x86_64/amd64/')

# Download golang installer
version="${go_latest}.${os_family}-${os_arch}"
tarball="$(mktemp -d)/${version}.tar.gz"
download_url="https://storage.googleapis.com/golang/${version}.tar.gz"
curl -s "${download_url}" -o "${tarball}"

# Create install location
install_path=${GO_PREFIX:-"/usr/local"}
mkdir -p "${install_path}"
tar xzf "${tarball}" -C "${install_path}"
