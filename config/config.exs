# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :findmy_personal,
  ecto_repos: [FindmyPersonal.Repo]

# Configures the endpoint
config :findmy_personal, FindmyPersonalWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JyNhtC3OkAUw1druE4rFM2i7bs5uzD6gvRMfHAJjUo3v6SFTBm5RtuMv4tYuifu1",
  render_errors: [view: FindmyPersonalWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: FindmyPersonal.PubSub,
  live_view: [signing_salt: "DV6aEIQL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
