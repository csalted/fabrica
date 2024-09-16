# Favorite apps for dock
apps=(
	"firefox_firefox.desktop"
	"Alacritty.desktop"
	"code.desktop"
	"Gmail.desktop"
	"todoist_todoist.desktop"
	"md.obsidian.Obsidian.desktop"
	"Poe.desktop"
	"Toggl.desktop"
	"bitwarden_bitwarden.desktop"
	"spotify.desktop"
	"Docker.desktop"
	"WhatsApp.desktop"
	"signal-desktop.desktop"
	"pinta_pinta.desktop"
	"Activity.desktop"
	"Fabrica.desktop"
	"org.gnome.Settings.desktop"
	"org.gnome.Nautilus.desktop"
)

# Array to hold installed favorite apps
installed_apps=()

# Directory where .desktop files are typically stored
desktop_dirs=(
	"/var/lib/flatpak/exports/share/applications"
	"/var/lib/snapd/desktop/applications"
	"/usr/share/applications"
	"/usr/local/share/applications"
	"$HOME/.local/share/applications"
)

# Check if a .desktop file exists for each app
for app in "${apps[@]}"; do
	for dir in "${desktop_dirs[@]}"; do
		if [ -f "$dir/$app" ]; then
			installed_apps+=("$app")
			break
		fi
	done
done

# Convert the array to a format suitable for gsettings
favorites_list=$(printf "'%s'," "${installed_apps[@]}")
favorites_list="[${favorites_list%,}]"

# Set the favorite apps
gsettings set org.gnome.shell favorite-apps "$favorites_list"
