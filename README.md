# docker-by-example
Docker Container to Teach/Learn By Example

[![](https://badge.imagelayers.io/yogendra/docker-by-example:latest.svg)](https://imagelayers.io/?images=yogendra/docker-by-example:latest 'Get your own badge on imagelayers.io')

This is a docker training project. This project will run as a docker container.

## Why a Docker Container?
Keep your regular environment clean.

## How to run?
You can run container using following command.
```shell
docker run -it --rm --privileged -p 5000:5000 -p 6000:6000 -p 7000:7000 yogendra/docker-by-example
```

## How to Build?
Build from source
```shell
git co git@github.com:yogendra/docker-by-example.git
cd docker-by-example
docker build -t yogendra/docker-by-example:latest .
```

## Any slid deck/UI to follow along?
WIP

## LICENSE
Free to use whatever way you want. But I am not liable for any damanges that this causes.

