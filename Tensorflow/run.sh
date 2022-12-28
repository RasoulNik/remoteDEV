#!/bin/bash

# Stop and remove the container if it already exists
docker stop tfdev
docker rm tfdev

# Run the container with GPU flag and exposed ports
#docker run --name tfdev --gpus all -p 20888:8888 -p 2022:22 -d tfdev
docker run --name tfdev  -p 2088:8888 -p 2022:22 -d tfdev

