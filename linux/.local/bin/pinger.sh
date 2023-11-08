#!/bin/bash

#############
# pinger.sh #
#############

# Ping every 30 seconds "192.168.0.1".
# If the ping fails, play a sound for alerting the user.
# The loop can only be stopped manually by the user.



while true; do
  if ! ping -c 1 192.168.0.1 > /dev/null; then
    echo "Ping failed! Alerting..."
    
    # Choose between one of these methods below.
    # paplay /usr/share/sounds/freedesktop/stereo/bell.oga # Play a beep sound.
    # mpv "/path/to/custom/audio/file.mp4" # Play any kind of audio.
  fi
  sleep 30
done
