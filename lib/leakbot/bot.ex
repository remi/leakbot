defmodule Leakbot.Bot do
  use Slack

  alias Slack.Web.Chat

  def handle_event(%{channel: "D" <> _, type: "message", text: text}, _slack, state) do
    leak_channel_id = Application.get_env(:leakbot, :leak_channel_id)
    Chat.post_message(leak_channel_id, "🚿 #{text}")

    {:ok, state}
  end

  def handle_event(_event, _slack, state), do: {:ok, state}
end
