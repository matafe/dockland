# Docker Java Application ( Executable JAR)

Java application that print a message


```bash
#build the application
gradlew docker-hello-world-jar:clean :docker-hello-world-jar:build -x test

#build the docker image
docker image build -t docker-hello-world:latest .

#execute the container
docker container run docker-hello-world:latest

#execute the container (background)
docker run -d -e sleep=120000 docker-hello-world:latest

docker exec -it ID sh

```
