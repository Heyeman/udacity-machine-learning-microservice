#!/usr/bin/env bash

# Create dockerpath
dockerpath=mreggert96/udacity-project-submission
dockerimage=udacity-project-submission
 
# Authenticate & tag
docker login
docker tag $dockerimage $dockerpath
echo "Docker ID and Image: $dockerpath"

# Push image to a docker repository
docker push $dockerpath
