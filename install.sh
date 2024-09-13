# Exit immediately if a command exits with a non-zero status
LIVE=false
if ${LIVE}; then
set -e
fi

# Desktop software and tweaks will only be installed if we're running Gnome
RUNNING_GNOME=$([[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]] && echo true || echo false)

# Check the distribution name and version and abort if incompatible
source ~/.local/share/fabrica/install/check-version.sh

if $RUNNING_GNOME; then
  # Ensure computer doesn't go to sleep or lock while installing
  gsettings set org.gnome.desktop.screensaver lock-enabled false
  gsettings set org.gnome.desktop.session idle-delay 0

  echo "Get ready to make a few choices..."
  source ~/.local/share/fabrica/install/terminal/required/app-gum.sh >/dev/null
  source ~/.local/share/fabrica/install/first-run-choices.sh

  echo "Installing terminal and desktop tools.."
else
  echo "Only installing terminal tools..."
fi

# Install terminal tools
source ~/.local/share/fabrica/install/terminal.sh

if $RUNNING_GNOME; then
  # Install desktop tools and tweaks
  source ~/.local/share/fabrica/install/desktop.sh

  # Revert to normal idle and lock settings
  gsettings set org.gnome.desktop.screensaver lock-enabled true
  gsettings set org.gnome.desktop.session idle-delay 300
fi
