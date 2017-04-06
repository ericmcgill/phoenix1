# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix1,
  ecto_repos: [Phoenix1.Repo]

# Configures the endpoint
config :phoenix1, Phoenix1.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UtBr9PhcfXMxLPlNBgx71Apw8KOk34R8AG2W6PsaM3cOrYRStTvOsuGxBebPBUkY",
  render_errors: [view: Phoenix1.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenix1.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
