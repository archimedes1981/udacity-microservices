#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
 dockerpath="archimedes1981/udacity"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker -tag $dockerpath "$dockerpath :latest"
docker login --username=archimedes1981

# Step 3:
# Push image to a docker repository
docker push $dockerpath
