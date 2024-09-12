cat <<EOF >~/.local/share/applications/Fabrica.desktop
[Desktop Entry]
Version=1.0
Name=Fabrica
Comment=Fabrica Controls
Exec=alacritty --config-file /home/$USER/.local/share/fabrica/defaults/alacritty/pane.toml --class=Fabrica --title=Fabrica -e fabrica
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/fabrica/applications/icons/Fabrica.png
Categories=GTK;
StartupNotify=false
EOF
