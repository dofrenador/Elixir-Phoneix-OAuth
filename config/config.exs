# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, DiscussWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uw1WHWn6Op1SkxK+LrrJ0oA8Q9JS+UBjTmkpFh9x/tm4P5miH/y0OH6zcoqrlefV",
  render_errors: [view: DiscussWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Discuss.PubSub,
  live_view: [signing_salt: "wDZVa8vN"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :ueberauth, Ueberauth,
  providers: [
    github: {Ueberauth.Strategy.Github, [allow_private_emails: true]}
  ]
config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "06caa81945dac30cff1b",
  client_secret: "14fa29c061d78bb0486ba47ba93e922fcb109735"
