#!/bin/bash

# Exit in case of error
set -e

# Create Entity relationship diagram from sqlAlchemy models
docker-compose run --rm backend python3 app/generate_erd.py