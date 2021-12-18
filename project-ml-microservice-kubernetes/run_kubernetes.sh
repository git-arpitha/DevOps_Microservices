#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=justinfo/devops_project4

# Step 2
# Run the Docker Hub container with kubernetes
/home/ec2-user/environment/DevOps_Microservices/project-ml-microservice-kubernetes/minikube kubectl -- run latest --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
/home/ec2-user/environment/DevOps_Microservices/project-ml-microservice-kubernetes/minikube kubectl -- get pods

# Step 4:
# Forward the container port to a host
/home/ec2-user/environment/DevOps_Microservices/project-ml-microservice-kubernetes/minikube kubectl -- port-forward latest 8000:80
