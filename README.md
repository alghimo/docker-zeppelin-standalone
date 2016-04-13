Apache Zeppelin on Docker
==========

This repo contains a Dockerfile to build a Docker image with Zeppelin running stand-alone. It extends maven:3.3.9-jdk-8 docker image.

## Building the image
```
docker build -t alghimo/docker-zeppelin-standalone:latest .
```

## Running the image
*Important*: If you are on Windows:
- Increase the memory of the VM that your docker is using. To test this, I increased the memory to 4GB. If you can increase the number of CPUs, do it as well.
- Enable port forwarding, it will make it easier to access Zeppelin.

```
docker run -it -p 9995:9995 -h zeppelin --name zeppelin alghimo/docker-zeppelin:latest bash
```
or
```
docker run -d -p 9995:9995 -h zeppelin --name zeppelin alghimo/docker-zeppelin:latest -d
```

## Versions
```
Apache Spark v1.6.0 and latest Zeppelin on Ubuntu. Zeppelin is cloned with git and built with Maven when building the image.
```

## Testing

Once running, just browse to http://localhost:9995.
