defmodule Leakbot.Bot do
  # Inclusions
  use Slack

  def handle_event(%{channel: "D" <> _, type: "message", text: text}, slack, state) do
    leak_channel = Application.get_env(:leakbot, :leak_channel);
    send_message("🚿 #{text}", leak_channel, slack)

    {:ok, state}
  end

  def handle_event(_event, _slack, state), do: {:ok, state}
end
