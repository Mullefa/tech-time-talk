#!/usr/bin/env bash

# docker run runs a command in a new container.
# In this case: create a new container from the ping-pong image and then run its CMD.
# -p publishes a container's port to the host
execute_command docker run -p 8080:8080 ping-pong
