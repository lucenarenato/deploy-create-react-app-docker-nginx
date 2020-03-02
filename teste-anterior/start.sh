#!/bin/bash

docker build --rm -f Dockerfile -t rick-morty-random-episode:latest .

docker run --rm -d -p 80:80 rick-morty-random-episode:latest

# docker-compose up --build
# docker-compose up -d --build

# docker build -t fooapp:v1 .
# docker run --rm -d 8080:80 fooapp:v1
