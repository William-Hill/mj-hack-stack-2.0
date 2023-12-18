#!/bin/bash

# Exit in case of error
set -e

#delete all docker images
docker rmi -f $(docker images -q)

#clear docker cache
docker buildx prune -f