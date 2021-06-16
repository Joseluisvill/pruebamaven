#!/bin/sh
mvn clean package && docker build -t com.mycompany/mongoserver .
docker rm -f mongoserver || true && docker run -d -p 9080:9080 -p 9443:9443 --name mongoserver com.mycompany/mongoserver