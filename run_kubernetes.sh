#!/usr/bin/env bash

dockerpath=heyeman/udacity-operationalize
app_name=ml-auto-operation-api

# Run the Docker Hub container with kubernetes
kubectl run $app_name --image=$dockerpath --port=80 --labels app=$app_name
# Wait for pod to be ready
echo "Waiting for pod to get into status ready..."
kubectl wait --for=condition=ready pod -l app=$app_name 
echo "Pod is ready!"

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward $app_name 8000:80
