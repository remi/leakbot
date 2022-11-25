# Leakbot

Leakbot is a Slack bot that forwards anonymous message to a specific channel.

## Installation

```bash
$ git clone git@github.com:remiprev/leakbot.git
```

## Environment variables

Leakbot expects a few environment variables when it starts.

```bash
# Slack API token linked to the bot
SLACK_API_TOKEN=foo

# Channel ID where the bot will forward messages
LEAK_CHANNEL_ID=C04ZGAHA8
```

## Usage

```bash
$ mix run --no-halt
```
