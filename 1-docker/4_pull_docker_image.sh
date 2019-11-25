#!/usr/bin/env bash

cd "$(dirname "$0")"

REPO_URI=$(aws cloudformation list-exports | jq '.Exports[] | select(.Name == "PingPongDockerRepoUri") | .Value' --raw-output)

execute_command docker image rm ping-pong -f
execute_command docker image rm ${REPO_URI} -f

execute_command docker images

execute_command docker pull ${REPO_URI}:latest

execute_command docker images

execute_command docker run -p 8080:8080 ${REPO_URI}