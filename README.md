# shadowman-the-bot

Bot framework for community engagement

## Setup

### Local development


```bash

bundle install

docker create --name shadow-redis -p 6379:6379 redis:5.0.6-alpine
docker start shadow-redis


```

## Deploy to Red Hat OpenShift

### Create the pod/project

```bash

oc new-project shadowman-the-bot
oc project shadowman-the-bot

```

### Import the Redis image stream and deploy the DB

```bash
oc import-image rhscl/redis-5-rhel7:5-14 --from=registry.redhat.io/rhscl/redis-5-rhel7:5-14 --confirm

oc create -f deployments/deploy-redis.yaml
```

### Build and deploy the bot

```bash
oc create -f deployments/secrets.yaml

oc create -f deployments/build-bot.yaml
oc create -f deployments/deploy-bot.yaml

```

## Reference

### Slack
* https://api.slack.com/apps

### Lita
* https://github.com/litaio/lita
* https://github.com/litaio/lita-slack
* https://docs.lita.io/plugin-authoring/handlers/

### Containers
* https://github.com/sclorg/s2i-ruby-container
* https://access.redhat.com/containers/?tab=overview&get-method=registry-tokens#/registry.access.redhat.com/rhscl/redis-5-rhel7
* https://hub.docker.com/_/redis/?tab=description
