# Show Dockerfile

# Build image
docker build -t hw:latest demo5-dockerfile++

# Run image
docker run --name hw1 hw

# Show ps output
docker ps -a

# Cleanup
docker rm -f hw1
