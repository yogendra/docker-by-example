#!/bin/sh

REQUIRED_IMAGES="hello-world ubuntu:latest python:3.4 training/webapp solr julia"

echo "Starting docker"
exec /usr/local/bin/dockerd-entrypoint.sh &
sleep 1
echo Docker started, pulling images now.

echo $REQUIRED_IMAGES | tr ' ' \\n | while read image
do
	if [[ `docker images -q $image | wc -l` -eq 0 ]]
	then
   echo "Pulling $image"
   docker pull $image
  fi
done

$*