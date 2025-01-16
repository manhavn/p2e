# p2e

Paypal 💜 manhavn@outlook.com

----------------------------------

## Basic tcp connect
![TCP-ENDPOINT](TCP-ENDPOINT.svg)

----------------------------------

## Remote connect
![TCP-REMOTE-ENDPOINT](TCP-REMOTE-ENDPOINT.svg)

----------------------------------
----------------------------------
----------------------------------

USE ARGS
==========================

SERVER CONNECTION

```shell
 ./p2e-connection-linux-amd64 --host="localhost" --port="3000"
```

```shell
 ./p2e-connection-linux-amd64 --host="localhost" --port="3000" --telegram-chat-id="-1000000000001" --telegram-bot-token="1000000001:AAAAAAAAAA-aaaaaaaaaaaaaaaaaaaaaaaa"
```

----------------------------------

APP ENDPOINT

```shell
 ./p2e-app-linux-amd64 --server="localhost:3000" --target="127.0.0.1:22" --port="44444"
```

----------------------------------

TEST
```shell
 ssh -p 44444 root@localhost
```

----------------------------------
----------------------------------
----------------------------------

OR USE ENV path content:
==========================

 ./env/global.env
----------------------------------

```env
GO_APP_SERVER_PORT=3000
GO_APP_SERVER_HOST=localhost
GO_APP_SERVER_TELEGRAM_CHAT_ID=-1000000000001
GO_APP_SERVER_TELEGRAM_BOT_TOKEN=1000000001:AAAAAAAAAA-aaaaaaaaaaaaaaaaaaaaaaaa

GO_APP_ENDPOINT_SERVER=localhost:3000
GO_APP_ENDPOINT_PORT=44444
GO_APP_ENDPOINT_TARGET=127.0.0.1:22
```

----------------------------------

SERVER CONNECTION
```shell
 ./p2e-connection-linux-amd64
```

----------------------------------

APP ENDPOINT
```shell
 ./p2e-app-linux-amd64
```

----------------------------------

TEST
```shell
 ssh -p 44444 root@localhost
```
