#!/bin/bash

docker-compose up --build -d
docker-compose exec debian ./mach build
docker-compose exec debian bash
