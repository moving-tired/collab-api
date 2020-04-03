use Mix.Config

# Configure your database
config :collab, Collab.Repo,
  username: "postgres",
  password: "changeme",
  database: "collab_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :collab, CollabWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
config :bcrypt_elixir, :log_rounds, 4
