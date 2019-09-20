# shadowman-the-bot
RHTE 2019 Hackathon

## Setup

```bash

bundle install

docker create --name shadow-db -p 27017:27017 mongo:3.6
docker start shadow-db

```

## Start

```bash

foreman start
ngrok http localhost:5000

```

## Reference

* https://github.com/mickuehl/slack-ruby-bot-server
* https://github.com/puma/puma
* https://docs.mongodb.com/mongoid/current/tutorials/mongoid-configuration/
