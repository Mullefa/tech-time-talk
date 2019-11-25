#!/usr/bin/env bash

# Assumes file file://~/.ping_pong_code_pipeline_creds.json contains JSON object with keys:
# - GithubPersonalAccessToken: string
# - PingPongWebhookSecretToken: string
# This secret is dynamically referenced in ./cloud-formation/code-pipeline.yaml
# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/dynamic-references.html#dynamic-references-secretsmanager
# Secrets manager is used since parameter store is not supported for AWS CodePipeline.

execute_command aws secretsmanager create-secret --name PingPongCodePipelineCreds --secret-string file://~/.ping_pong_code_pipeline_creds.json