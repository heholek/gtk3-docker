#!/usr/bin/env bash

docker kill gtk3-docker
docker rm gtk3-docker

docker build -t gtk3-docker .

docker run -d -p 8085:8085 --name gtk3-docker gtk3-docker

