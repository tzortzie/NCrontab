#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
VERSION_SUFFIX=
if [ ! -z "$1" ]; then VERSION_SUFFIX="--version-suffix $1"; fi
./build.sh
dotnet test NCrontab.Tests
