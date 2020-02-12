#!/bin/bash


docker exec -it nginx nginx -t
if [ $? -eq 0 ]; then
  echo " >>>>>>>>>> NGINX Config Cheeck OK <<<<<<<<<< "

else
  echo " !!!!!!!!!! NGINX Config Check Fail !!!!!!!!!! "
fi
