#!/usr/bin/env bash

docker rmi -f demo-remote-debug-java:0.0.1
docker build -t demo-remote-debug-java:0.0.1 .