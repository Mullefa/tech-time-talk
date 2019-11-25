#!/usr/bin/env bash

cd "$(dirname "$0")"

execute_command aws cloudformation create-stack --stack-name PingPongECR --template-body file://cloud-formation/ecr.yaml
