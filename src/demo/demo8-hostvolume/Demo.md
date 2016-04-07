# Create a container with volume
docker run -t  -v demo8/webapp:/opt/webapp -w /opt/workdir --rm -p 5000:5000 python:3.4  python -m http.server 5000

#Open browser
open http://dockerhost:8000/index.html

