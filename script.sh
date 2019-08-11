#!/bin/bash
if `docker ps ` == *vigilant_kilby*; then 
  docker container rm -f vigilant_kilby
  
else
  docker run -itd --name vigilant_kilby ajaysheoran2323/mynewimage:latest
  
fi
