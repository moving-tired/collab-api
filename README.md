# Collab

[![CircleCI](https://circleci.com/gh/moving-tired/collab-api/tree/master.svg?style=svg&circle-token=ea4b2eef4f87f1c7adacff12f49bacc694870830)](https://circleci.com/gh/moving-tired/collab-api/tree/master)

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

# Deploy

```bash
heroku login
heroku container:login
heroku container:push webapp --app=collab-api
heroku container:release webapp --app=collab-api
```

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
