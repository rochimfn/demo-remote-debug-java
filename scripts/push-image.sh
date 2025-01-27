#!/usr/bin/env bash

docker tag demo-remote-debug-java:0.0.1 localhost:32000/demo-remote-debug-java:0.0.1
docker push localhost:32000/demo-remote-debug-java:0.0.1