# Simple JSP webapp on Tomcat

## Checkout 
```bash
git clone https://github.com/matafe/dockland.git
````

## Build
```bash
cd jsp-app
mvn clean package
```

## Run local for dev
```bash
mvn tomcat7:run
````

[http://localhost:8080/jsp-app](http://localhost:8080/jsp-app)

## Run in a docker container
```bash
mkdir -p /tmp/logs &&
mvn clean package && 
docker build -t matafe/dockland/jsp-app . && 
docker run -d -p 8090:8080 -v /tmp/logs:/usr/local/tomcat/logs --name jsp-app matafe/dockland/jsp-app
````

### Check if container is running.
docker ps


### Connect on docker container.
docker exec -it jsp-app bash

## Deploy in other Tomcat Server Locally

```bash
export TOMCAT_HOME=/opt/java/apache-tomcat-9.0.20
````

Add to *$TOMCAT_HOME/conf/tomcat-users.xml*

```xml
<role rolename="manager-gui"/>
<role rolename="manager-script"/>
<user username="tomcat" password="tomcat" roles="manager-gui,manager-script"/>
```

```bash
$TOMCAT_HOME/bin/catalina.sh run
mvn tomcat7:deploy
```

## Maven app creation
 mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-webapp -DarchetypeVersion=1.4 -DgroupId=com.matafe -DartifactId=jsp-app -Dversion=1.0-SNAPSHOT -Dpackage=com.matafe.jsp-app -DinteractiveMode=false