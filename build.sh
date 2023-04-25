#!/bin/sh

set -e

docker buildx build . \
  --push \
  --platform linux/arm/v7,linux/arm64/v8,linux/amd64 \
  -t julianpoy/node-with-mdbtools:latest \
  -t julianpoy/node-with-mdbtools:$1

