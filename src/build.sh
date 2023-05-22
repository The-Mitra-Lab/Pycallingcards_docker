#!/bin/bash

tag="V0.0.7"

docker buildx create --use
docker buildx build --push --platform linux/arm64/v8,linux/amd64 -t juanruguo/pycallingcards:$tag -t juanruguo/pycallingcards:latest ./

# docker run -p 10981:10981 juanruguo/pycallingcards




