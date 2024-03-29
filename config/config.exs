# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# Slack
config :slack, api_token: System.get_env("SLACK_API_TOKEN")

# Leakbot
config :leakbot, leak_channel_id: System.get_env("LEAK_CHANNEL_ID")
