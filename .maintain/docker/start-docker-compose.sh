#!/usr/bin/env bash

set -e

pushd .

# The following line ensure we run from the project root
PROJECT_ROOT=$(git rev-parse --show-toplevel)
cd $PROJECT_ROOT

echo "Starting docker compose"
docker-compose -p myriad-federated -f .maintain/docker/docker-compose.yml up -d

popd
