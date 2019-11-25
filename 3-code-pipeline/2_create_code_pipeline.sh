#!/usr/bin/env bash

cd "$(dirname "$0")"

execute_command aws cloudformation create-stack --stack-name PingPongCodePipeline --template-body file://cloud-formation/code-pipeline.yaml