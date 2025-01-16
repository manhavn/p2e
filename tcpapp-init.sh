#!/bin/bash
echo 'cd '"$(dirname "$0")"
cd "$(dirname "$0")"

# docker stop tcpapp22 && docker rm tcpapp22  && docker rmi manhavn/tcpapp:v0.0.1
 docker stop tcpapp22
 docker rm tcpapp22
 docker rmi manhavn/tcpapp:v0.0.1
 docker run -d \
  --restart always \
  --name tcpapp22 \
  -e GO_APP_ENDPOINT_SERVER=localhost:3000 \
  -e GO_APP_ENDPOINT_TARGET=172.17.0.1:22 \
  -e GO_APP_ENDPOINT_PORT=44444 \
  -it manhavn/tcpapp:v0.0.1
