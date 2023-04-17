#!/bin/bash

echo "[ Telegram Server Monitor ] Started "

# wait for internet connection
while ! ping -c1 google.com &>/dev/null; do sleep 1; done

last_powerup=$(last -x reboot | awk '{print $5, $6}' | sed -n 2p)

last_login=$(last -n 1 | awk '{print $4, $5, $6, $7}')

# Telegram Bot Token
telegram_bot_token="YOUR_TELEGRAM_BOT_TOKEN"

# Telegram Chat ID
telegram_chat_id="YOUR_TELEGRAM_CHAT_ID"

message="✅ Server Up:
  - 📆 Time: $(date)
  - ⏳ Last Power Up: $last_powerup
  - 🔑 Last Login: $(echo "$last_login" | head -n1)"

curl -s -X POST https://api.telegram.org/bot$telegram_bot_token/sendMessage\
    -d chat_id=$telegram_chat_id\
    -d text="$message" \
    >/dev/null

echo "[ Telegram Server Monitor ] Message Sent ! "
