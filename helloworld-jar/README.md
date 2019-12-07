# Docker Java Application ( Executable JAR)

Java application that print a message


```bash
#build the application
dockland$ gradlew helloworld-jar:clean :helloworld-jar:build -x test

#build the docker image
helloworld-jar$ docker image build -t matafe/dockland/helloworld-jar:latest .

#execute the container
docker container run --rm matafe/dockland/helloworld-jar:latest

#execute the container (background)
docker run --name helloworld-jar -d -e sleep=120000 --rm matafe/dockland/helloworld-jar:latest

#check is the docker container is running.
docker ps

#connect to this container
docker exec -it helloworld-jar sh

```
