FROM maven:3.5-jdk-8-alpine as BUILD

LABEL description="JSP Web application build with maven 3.5 and java 8 deployed on tomcat 9"
MAINTAINER Mauricio Ferraz <matafe@gmail.com>

COPY ./ ./
RUN mvn clean package


FROM tomcat:9.0.20-jre8-alpine

COPY --from=BUILD ./target/*.war $CATALINA_HOME/webapps/
COPY --from=BUILD ./config/tomcat9/conf/* $CATALINA_HOME/conf/
COPY --from=BUILD ./config/tomcat9/webapps/manager/META-INF/* $CATALINA_HOME/webapps/manager/META-INF/
COPY --from=BUILD ./config/tomcat9/webapps/host-manager/META-INF/* $CATALINA_HOME/webapps/host-manager/META-INF/
COPY --from=BUILD ./target/*.war $CATALINA_HOME/webapps/

#FROM tomcat:9.0.20-jre8-alpine

EXPOSE 8080

RUN rm -rf $CATALINA_HOME/webapps/docs \
 rm -rf $CATALINA_HOME/webapps/examples \
 rm -rf $CATALINA_HOME/webapps/ROOT

#COPY ./config/tomcat9/conf/* $CATALINA_HOME/conf/
#COPY ./config/tomcat9/webapps/manager/META-INF/* $CATALINA_HOME/webapps/manager/META-INF/
#COPY ./target/*.war $CATALINA_HOME/webapps/

# This values can be overriden by -e JAVA_OPTS='newValues' docker run command line.
ENV JAVA_OPTS="-Xms1024m -Xmx1024m -XX:MaxMetaspaceSize=256m \
-XX:+HeapDumpOnOutOfMemoryError \
-Dfile.encoding=utf-8 "

CMD ["catalina.sh", "run"]