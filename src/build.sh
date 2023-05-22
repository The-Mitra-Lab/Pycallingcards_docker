#!/bin/bash

tag="V0.0.7"

# --platform linux/amd64
docker build -t juanruguo/pycallingcards:$tag -t juanruguo/pycallingcards:latest ./

docker push juanruguo/pycallingcards:$tag
docker push juanruguo/pycallingcards:latest

docker run -p 10981:10981 juanruguo/pycallingcards




