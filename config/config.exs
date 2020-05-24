# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :collab,
       ecto_repos: [Collab.Repo]

# Configures the endpoint
config :collab,
       CollabWeb.Endpoint,
       url: [
         host: "localhost"
       ],
       secret_key_base: "d0T4ACE2x2zm7pz2fFcX11aMpvEJqtqmeqy3+9oMT+isxbBv4kVtUe4qUxsuCpKy",
       render_errors: [
         view: CollabWeb.ErrorView,
         accepts: ~w(json)
       ],
       pubsub: [
         name: Collab.PubSub,
         adapter: Phoenix.PubSub.PG2
       ],
       live_view: [
         signing_salt: "9zXzGEtt"
       ]

# Configures Elixir's Logger
config :logger,
       :console,
       format: "$time $metadata[$level] $message\n",
       metadata: [:request_id]

config :collab,
       CollabWeb.Guardian,
       issuer: "collab",
       secret_key: "+7TJ1rD5vOfjCunB/kmDRky8ymB+dxRclW5QZwnxE+zsecCk/wsEAaqJy022OssF5",
       error_handler: CollabWeb.AuthErrorHandler

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
