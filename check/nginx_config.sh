#!/bin/bash

RED='\033[0;31m'
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

docker exec -it nginx nginx -t
if [ $? -eq 0 ]; then
  echo " ${GREEN} >>>>>>>>>> NGINX Config Cheeck OK <<<<<<<<<< ${NOCOLOR}"

else
  echo " ${RED} !!!!!!!!!! NGINX Config Check Fail !!!!!!!!!! ${NOCOLOR}"
fi
