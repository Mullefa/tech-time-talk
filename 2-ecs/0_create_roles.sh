#!/usr/bin/env bash

cd "$(dirname "$0")"

execute_command aws cloudformation create-stack --stack-name ECSRoles --template-body file://cloud-formation/roles.yaml --capabilities CAPABILITY_NAMED_IAM
