#!/usr/bin/env bash

# Utility function for making it transparent commands that are getting executed in bash scripts.

green='\033[0;32m'
blue='\033[01;36m'
reset='\033[0m' # No Color

COMMAND="$@"

read -p "$(echo -e "${green}executing command: ${blue} ${COMMAND} ${reset}")"
eval ${COMMAND}
read -p "$(echo -e "${green}command complete ${reset}")"
