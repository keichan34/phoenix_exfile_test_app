# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phoenix_exfile_test_app, PhoenixExfileTestApp.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "BoYyhgdOMWlM3UqlTAelGT6MrCeenVbA5eSjzYSl+n5L3QQScFh6Og4btM0Zz8VR",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: PhoenixExfileTestApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

config :exfile, Exfile,
  secret: "secret string to generate the token used to authenticate requests",
  backends: %{
    "store" => {Exfile.Backend.FileSystem,
      directory: Path.expand("./tmp/store")
    },
    "cache" => {Exfile.Backend.FileSystem,
      directory: Path.expand("./tmp/cache")
    }
  }
