# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :testing_my_blog,
  ecto_repos: [TestingMyBlog.Repo]

# Configures the endpoint
config :testing_my_blog, TestingMyBlog.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "isngScX4gtzsrhsAqJouj2pNWd/QItFcWWzfyGZvoZpDcw86anOoZYYNmSEMkZ2v",
  render_errors: [view: TestingMyBlog.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TestingMyBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
