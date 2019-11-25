#!/usr/bin/env bash

cd "$(dirname "$0")"
cd ../1-docker

# Assumes jq is installed.
REPO_URI=$(aws cloudformation list-exports | jq '.Exports[] | select(.Name == "PingPongDockerRepoUri") | .Value' --raw-output)

execute_command docker images

# Tags a local image into a remote repository
execute_command docker tag ping-pong:latest ${REPO_URI}:latest

execute_command docker images

# When pushing to the remote repository,
# docker will look for a local image tagged with the remote repository.
# This is the image that will be pushed.
execute_command docker push ${REPO_URI}:latest
