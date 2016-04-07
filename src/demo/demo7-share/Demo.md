# Show dockerfile


# Create image
docker build -t yodemo:latest demo7-share
docker images | grep yodemo

# Run container
docker run --rm -it yodemo:latest

# Save image
docker save yodemo:latest > demo7-share/yodemo.tar

# Delete image
docker rmi yodemo:latest
docker images | grep yodemo

# Load image
docker load -i demo7-share/yodemo.tar
docker images | grep yodemo

# Run container
docker run --rm -it yodemo:latest

