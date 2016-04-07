# Show Dockerfile

# Build image
docker build -t yobuntu:latest demo4-dockerfile

# Create a container
docker run -ti --name yobuntu1 yobuntu

#Clean up
docker rm -f yobuntu1
