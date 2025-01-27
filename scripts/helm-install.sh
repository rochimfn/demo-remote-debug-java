#!/usr/bin/env bash

microk8s helm upgrade --install -f ./charts/values.yaml demo-java-remote-debug ./charts