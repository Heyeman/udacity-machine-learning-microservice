#!/usr/bin/env bash

# Create dockerpath
dockerpath="heyeman/udacity-operationalize"
dockerimage=ml-auto-operation-api
 
# Authenticate & tag
docker login
docker tag $dockerimage $dockerpath
echo "Docker ID and Image: $dockerpath"

# Push image to a docker repository
docker push $dockerpath
