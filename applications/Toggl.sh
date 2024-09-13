cat <<EOF >~/.local/share/applications/Toggl.desktop
[Desktop Entry]
Version=1.0
Name=Toggl
Comment=Toggl time tracking
Exec=google-chrome --app="https://track.toggl.com/timer" --name=Toggl --class=Toggl
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/fabrica/applications/icons/Toggl.png
Categories=GTK;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF
