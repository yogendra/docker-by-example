# Run a simple app
docker run -d --name app -p 5000:5000 training/webapp python app.py

# See status
docker ps

# Goto browser http://dockerhost:5000
open http://dockerhost:5000

# Cleanup
docker rm -f app
