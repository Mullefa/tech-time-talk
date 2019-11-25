#!/usr/bin/env bash

cd "$(dirname "$0")"
cd app

# docker build builds an image from a Dockerfile
# -t names and optionally a tag in the `name:tag` format
execute_command docker build -t ping-pong .

execute_command docker images
