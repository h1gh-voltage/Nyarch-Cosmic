#!/bin/bash

LIVEUSER="live"
chmod -R 777 ~/.config/nyarch
chmod -R 777 ~/.config/autostart
chmod +x /home/live/.config/autostart/*.desktop
if [ "$USER" = "$LIVEUSER" ]; then
   sleep 2
  ./home/live/.config/autostart/autostart.sh
else
    nyarchtour
    rm -rf ~/.config/autostart/start.desktop
fi