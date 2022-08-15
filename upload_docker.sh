#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=prediction-api:1.0

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag prediction-api:1.0 kikiolu25/prediction-api:1.0
docker login -u kikiolu25 -p $PASSWORD

# Step 3:
# Push image to a docker repository
docker push kikiolu25/prediction-api:1.0
