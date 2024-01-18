#!/bin/bash 
wget https://raw.githubusercontent.com/oushujun/LTR_retriever/master/Dockerfile

# Create and login to DockerHub
# https://hub.docker.com/
# https://docs.docker.com/docker-hub/quickstart/
# https://docs.docker.com/docker-hub/repos/
dockerHubAccount=<account>
docker build -t $dockerHubAccount/ltr-retriever:latest .
# Building can be long

docker push $dockerHubAccount/ltr-retriever

# now you can pull it wherever you want...
