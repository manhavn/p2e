#!/bin/bash
echo 'cd '"$(dirname "$0")"
cd "$(dirname "$0")"

# docker stop tcpconnection && docker rm tcpconnection && docker rmi manhavn/tcpconnection:v0.0.1
 docker stop tcpconnection
 docker rm tcpconnection
 docker rmi manhavn/tcpconnection:v0.0.1
 docker run -d \
  --restart always \
  --name tcpconnection \
  --network host \
  -e GO_APP_SERVER_HOST=localhost \
  -e GO_APP_SERVER_PORT=3000 \
  -e GO_APP_SERVER_TELEGRAM_CHAT_ID=-1000000000001 \
  -e GO_APP_SERVER_TELEGRAM_BOT_TOKEN=1000000001:AAAAAAAAAA-aaaaaaaaaaaaaaaaaaaaaaaa \
  -it manhavn/tcpconnection:v0.0.1

