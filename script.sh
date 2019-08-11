#!/bin/bash
CNAME=$(docker ps --format '{{.Names}}')
if [ ${CNAME}!="vigilant_kilby" ]; then 
  docker pull ajaysheoran2323/mynewimage:latest && docker run -itd --name vigilant_kilby ajaysheoran2323/mynewimage:latest
  
else
	docker rm -f vigilant_kilby && docker pull ajaysheoran2323/mynewimage:latest && docker run -itd --name vigilant_kilby ajaysheoran2323/mynewimage:latest
  
fi
