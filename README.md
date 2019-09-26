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

```bash

oc new-project shadowman-the-bot

oc import-image rhscl/redis-5-rhel7 --from=registry.access.redhat.com/rhscl/redis-5-rhel7 --confirm

oc create -f deployments/secrets.yaml
oc create -f deployments/build-bot.yaml
oc create -f deployments/deploy-mongodb.yaml
oc create -f deployments/deploy-bot.yaml

```

## Reference

* https://api.slack.com/apps

* https://github.com/litaio/lita
* https://github.com/litaio/lita-slack
* https://docs.lita.io/plugin-authoring/handlers/

* https://hub.docker.com/_/redis/?tab=description
