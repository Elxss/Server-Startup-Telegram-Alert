#!/bin/bash

# Telegram Bot Token
telegram_bot_token="YOUR_TELEGRAM_BOT_TOKEN"

while true; do
  chat_id=$(curl -s "https://api.telegram.org/bot$telegram_bot_token/getUpdates" | jq -r '.result[-1].message.chat.id')
  if [ ! -z "$chat_id" ]; then
    echo "Chat ID : $chat_id"
    break
  fi
  sleep 1
done