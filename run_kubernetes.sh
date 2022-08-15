#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=kikiolu25/prediction-api:1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run prediction-app -i kikiolu25/prediction-api:1.0 -p 80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward prediction-app 8000:80
