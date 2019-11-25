#!/usr/bin/env bash

cd "$(dirname "$0")"

execute_command aws cloudformation create-stack --stack-name VPC --template-body file://cloud-formation/vpc.yaml
