# Collab  
[![CircleCI](https://circleci.com/gh/moving-tired/collab-api/tree/master.svg?style=svg&circle-token=ea4b2eef4f87f1c7adacff12f49bacc694870830)](https://circleci.com/gh/moving-tired/collab-api/tree/master)

# Development  

## Local environment 

You may setup docker environment using

```bash

make start-devenv

```

Don't forget to shutdown the docker compose childs when you're done with your changes:
```bash

make clear-devenv

```

## For the first time:

Create database, took configs from config/dev.exs:
 
```bash 
mix ecto.create
```
Run migrations

```bash
mix ecto.migrate
```

## Running application

```bash
mix phx.server
```

## Code analisys  

```bash
mix credo --strict
``` 

## Testing

```bash
mix test
``` 

# Deploy  

```bash
heroku login
heroku container:login
heroku container:push webapp --app=collab-api
heroku container:release webapp --app=collab-api
```