#!/usr/bin/env bash

cd "$(dirname "$0")"

# Get credentials to AWS Container Repository
$(aws ecr get-login --no-include-email)

# Make execute_command.sh an executable
# (assumes ~/local/bin exists and is on PATH).
cp ./execute_command.sh ~/local/bin/execute_command

# Check account that the talk is run against.
aws sts get-caller-identity
