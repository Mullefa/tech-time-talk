#!/usr/bin/env bash

cd "$(dirname "$0")"

execute_command aws cloudformation create-stack --stack-name PingPongService --template-body file://cloud-formation/service.yaml
