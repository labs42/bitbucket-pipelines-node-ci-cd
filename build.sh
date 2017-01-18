#!/usr/bin/env bash

docker build ./src -t labs42/bitbucket-pipelines-node-ci-cd:latest
docker push labs42/bitbucket-pipelines-node-ci-cd:latest
