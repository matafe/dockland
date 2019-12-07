# Hello World - Shell Script

Simple shell script **helloworld.sh** executed in a docker container

```bash
# Build the image.
docker build -t matafe/dockland/helloworld-sh .

# Verify images.
docker images

# Run a container.
docker run -it matafe/dockland/helloworld-sh

# Output.
Hello World!
```