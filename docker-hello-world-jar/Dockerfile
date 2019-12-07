FROM openjdk:8-jre-alpine
LABEL description="Docker Executable JAR"
MAINTAINER Mauricio Ferraz <matafe@gmail.com>
COPY build/libs/docker-hello-world-jar.jar /opt/docker-hello-world-jar.jar

ARG sleep=0
ENV sleep=$sleep

CMD java -Dsleep=$sleep -jar /opt/docker-hello-world-jar.jar