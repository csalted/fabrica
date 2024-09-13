cat <<EOF >~/.local/share/applications/Gmail.desktop
[Desktop Entry]
Version=1.0
Name=Gmail
Comment=Gmail Email + Calendar
Exec=google-chrome --app="https://gmail.com/" --name=Gmail --class=Gmail
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/fabrica/applications/icons/Gmail.png
Categories=GTK;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF
