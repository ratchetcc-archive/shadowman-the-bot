# shadowman-the-bot
RHTE 2019 Hackathon

## Setup

### Local development


```bash

bundle install

docker create --name shadow-redis -p 6379:6379 redis:5.0.6-alpine
docker start shadow-redis


```

## Deploy to Red Hat OpenShift

TBD

## Reference

* https://api.slack.com/apps

* https://github.com/litaio/lita
* https://github.com/litaio/lita-slack
* https://docs.lita.io/plugin-authoring/handlers/

* https://hub.docker.com/_/redis/?tab=description
