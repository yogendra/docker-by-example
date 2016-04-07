# Create a new container
docker run -d -p 5000:5000 --name yoapp training/webapp python app.py

# Go into the image and make changes
docker exec -it yoapp bash

#vi app.py
#import datetime
#    return 'Hello '+provider+'! '+datetime.date.today().isoformat()


# commit image
docker commit -a "Yogi" -m "Added date to welcome message" yoapp yogendra/yoapp:latest

# show that docker image is created
docker images

# create a container with new image
docker run -d -p 6000:5000 --name yoappnew yogendra/yoapp:latest python app.py


# Goto http://dockerhost:6000
open http://dockerhost:6000

# Stop and Remove container
docker rm -f yoapp yoappnew