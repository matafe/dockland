FROM openjdk:8-jre-alpine
LABEL description="Docker Executable JAR"
MAINTAINER Mauricio Ferraz <matafe@gmail.com>
COPY build/libs/helloworld-jar.jar /opt/helloworld-jar.jar

ARG sleep=0
ENV sleep=$sleep

CMD java -Dsleep=$sleep -jar /opt/helloworld-jar.jar