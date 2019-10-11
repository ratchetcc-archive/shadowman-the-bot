# shadowman-the-bot

Bot framework for community engagement

## Setup

### Local development


```bash

bundle install

docker create --name shadow-redis -p 6379:6379 redis:5.0.6-alpine
docker start shadow-redis

```

## Reference

### Slack
* https://api.slack.com/apps

### Lita
* https://github.com/litaio/lita
* https://github.com/litaio/lita-slack
* https://docs.lita.io/plugin-authoring/handlers/
* https://www.rubydoc.info/gems/lita-slack/Lita/Adapters/Slack

### Containers
* https://github.com/sclorg/s2i-ruby-container
* https://access.redhat.com/containers/?tab=overview&get-method=registry-tokens#/registry.access.redhat.com/rhscl/redis-5-rhel7
* https://hub.docker.com/_/redis/?tab=description

### Development

* https://github.com/joeferner/redis-commander

heroku create shtb-bot --region eu
heroku addons:create heroku-redis:hobby-dev --app shtb-bot
