# Collab

[![CircleCI](https://circleci.com/gh/moving-tired/collab-api/tree/master.svg?style=svg&circle-token=ea4b2eef4f87f1c7adacff12f49bacc694870830)](https://circleci.com/gh/moving-tired/collab-api/tree/master)

# Deploy

```bash
heroku login
heroku container:login
heroku container:push webapp --app=collab-api
heroku container:release webapp --app=collab-api
```