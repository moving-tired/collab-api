# Collab

[![CircleCI](https://circleci.com/gh/moving-tired/collab-api/tree/master.svg?style=svg&circle-token=ea4b2eef4f87f1c7adacff12f49bacc694870830)](https://circleci.com/gh/moving-tired/collab-api/tree/master)

# Development

## Local environment

You may setup docker environment using
```bash
docker-compose -f ./docker-compose-local.yml up
```

## Running application

```bash
mix phx.server
```

# Deploy

```bash
heroku login
heroku container:login
heroku container:push webapp --app=collab-api
heroku container:release webapp --app=collab-api
```