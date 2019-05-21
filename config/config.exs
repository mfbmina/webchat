# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :webchat,
  ecto_repos: [Webchat.Repo]

# Configures the endpoint
config :webchat, WebchatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "R7eQ5XgCoCd1n3zmR9DZ2n0TcZn5dJPcrPiHTDYHf1W+OKqYpSEAjYGhQQd69LiV",
  render_errors: [view: WebchatWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Webchat.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
