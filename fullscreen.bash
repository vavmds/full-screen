#!/bin/bash
xset -dpms &
xset s noblank &
xset s off &
pkill chrome
rm -rf /home/machinename/.config/google-chrome/Default
gsettings set org.gnome.desktop.screensaver lock-enabled 'false'
xset dpms force on
/usr/bin/google-chrome --kiosk --start-maximized "https://www.yoururl.com" --no-default-browser-check --noerrdialogs --no-message-box --disable-desktop-notifications --allow-running-insecure-content --disk-cache-size=0
