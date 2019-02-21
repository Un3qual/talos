# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tl_web,
  namespace: TL.Web,
  ecto_repos: [TL.DB.Repo]

# Configures the endpoint
config :tl_web, TL.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yPzDn7Tztx1jEQiAlPkYZ6HOQbYY+4NyYUYfRLyMzNVI45he9yYOz/4PH2tjBkMi",
  render_errors: [view: TL.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TL.Web.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :tl_web, :generators,
  context_app: false

config :phoenix, :json_library, Jason

config :phoenix, :format_encoders,
  "json-api": Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
