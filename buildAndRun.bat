@echo off
call mvn clean package
call docker build -t com.mycompany/mongoserver .
call docker rm -f mongoserver
call docker run -d -p 9080:9080 -p 9443:9443 --name mongoserver com.mycompany/mongoserver