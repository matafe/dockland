#!/bin/bash

mkdir -p /tmp/logs && mvn clean package && docker build -t matafe/dockland/jsp-app . && docker run -d -p 8090:8080 -v /tmp/logs:/usr/local/tomcat/logs --name jsp-app matafe/dockland/jsp-app
echo "Try http://localhost:8090/jsp-app"
