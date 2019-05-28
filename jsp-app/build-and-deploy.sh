#!/bin/bash

mvn clean package && docker build -t matafe/dockland/jsp-app . && docker run -d -p 8090:8080 matafe/dockland/jsp-app
echo "http://localhost:8090/jsp-app"
