cat <<EOF >~/.local/share/applications/Poe.desktop
[Desktop Entry]
Version=1.0
Name=Poe
Comment=Poe AI
Exec=google-chrome --app="https://poe.com/" --name=Poe --class=Poe
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/fabrica/applications/icons/Poe.png
Categories=GTK;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF