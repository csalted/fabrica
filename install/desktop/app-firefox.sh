sudo snap install firefox
xdg-settings set default-web-browser firefox_firefox.desktop

echo "Going to open Firefox for the first time to create default profile and and then close it again..."
gtk-launch firefox_firefox.desktop >/dev/null 2>&1
sleep 8 # ensure enough time for firefox to launch and create profile directory
# Close firefox
pkill firefox
DEFAULT_FF_PROFILE=$(grep 'Path=' ~/snap/firefox/common/.mozilla/firefox/profiles.ini | sed s/^Path=//)
cp ~/.local/share/fabrica/configs/firefox/user.js ~/snap/firefox/common/.mozilla/firefox/${DEFAULT_FF_PROFILE}/user.js
echo "Settings copied..."