defmodule Leakbot do
  use Application

  def start(_type, _args) do
    IO.inspect("lol")
    Slack.Bot.start_link(Leakbot.Bot, [], Application.get_env(:slack, :api_token))
  end
end
