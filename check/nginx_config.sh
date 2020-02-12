#!/bin/bash
REPO_HUB = yjlim2
NAME = nginx
VERSION = 1.17.1


docker exec -it nginx nginx -t
if [ $? -eq 0 ]; then
  echo " >>>>>>>>>> NGINX Config Cheeck OK <<<<<<<<<< "
  docker login -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"
  docker push $(REPO_HUB)/$(NAME):$(TAGNAME)-dev

else
  echo " !!!!!!!!!! NGINX Config Check Fail !!!!!!!!!! "
fi
