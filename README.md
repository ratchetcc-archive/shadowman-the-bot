# shadowman-the-bot
RHTE 2019 Hackathon

## Setup

### Local development

```bash

bundle install

docker create --name shadow-db -p 27017:27017 mongo:3.6
docker start shadow-db

foreman start
ngrok http localhost:5000

```

## Deploy to Red Hat OpenShift

```bash

oc new-project shadowman-the-bot
oc import-image rhscl/mongodb-36-rhel7 --from=registry.access.redhat.com/rhscl/mongodb-36-rhel7 --confirm
oc create -f deployments/secrets.yaml
oc create -f deployments/build-bot.yaml
oc create -f deployments/deploy-mongodb.yaml
oc create -f deployments/deploy-bot.yaml

```

## Reference

* https://github.com/mickuehl/slack-ruby-bot-server
* https://github.com/puma/puma
* https://docs.mongodb.com/mongoid/current/tutorials/mongoid-configuration/
