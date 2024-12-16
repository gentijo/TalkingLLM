#!/bin/sh
docker stop  talking-llm
docker rm talking-llm

docker build -t talking-llm.img .

docker run -it -v `pwd`:/opt/code -p 8888:8888 \
 --privileged=true \
 --device=/dev/snd:/dev/snd  \
 --name talking-llm \
 talking-llm.img

