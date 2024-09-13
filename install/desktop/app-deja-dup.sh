# gui backup tool
sudo apt-get install -y deja-dup
# configure settings
gsettings set org.gnome.DejaDup allow-metered false
gsettings set org.gnome.DejaDup backend 'google'
gsettings set org.gnome.DejaDup custom-tool-setup ''
gsettings set org.gnome.DejaDup custom-tool-teardown ''
gsettings set org.gnome.DejaDup custom-tool-wrapper ''
gsettings set org.gnome.DejaDup delete-after 0
gsettings set org.gnome.DejaDup exclude-list "['$HOME/.local/share/Trash', '$HOME/Download', '$HOME/.android', '$HOME/.cache', '$HOME/.cursor-tutor', '$HOME/.cursor-tutor-1', '$HOME/.cursor-tutor-2', '$HOME/.dartServer', '$HOME/.dart-tool', '$HOME/.docker', '$HOME/.dotnet', '$HOME/.epsonscan2', '$HOME/.flutter-devtools', '$HOME/.gradle', '$HOME/.java', '$HOME/.local', '$HOME/.zoom', '$HOME/Android', '$HOME/android-studio', '$HOME/Cursor', '$HOME/snap']"
gsettings set org.gnome.DejaDup full-backup-period 90
gsettings set org.gnome.DejaDup include-list "['$HOME']"
gsettings set org.gnome.DejaDup periodic true
gsettings set org.gnome.DejaDup periodic-period 1
gsettings set org.gnome.DejaDup tool 'duplicity'
gsettings set org.gnome.DejaDup window-fullscreened false
gsettings set org.gnome.DejaDup window-height 500
gsettings set org.gnome.DejaDup window-maximized false
gsettings set org.gnome.DejaDup window-width 700
gsettings set org.gnome.DejaDup.Drive folder '$HOSTNAME'
gsettings set org.gnome.DejaDup.Drive icon ''
gsettings set org.gnome.DejaDup.Drive name ''
gsettings set org.gnome.DejaDup.Drive uuid ''
gsettings set org.gnome.DejaDup.Google folder '$HOSTNAME'
gsettings set org.gnome.DejaDup.Local folder '$HOSTNAME'
gsettings set org.gnome.DejaDup.Microsoft folder '$HOSTNAME'
gsettings set org.gnome.DejaDup.Remote folder '$HOSTNAME'
gsettings set org.gnome.DejaDup.Remote uri ''