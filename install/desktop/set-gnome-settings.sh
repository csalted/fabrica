# Center new windows in the middle of the screen
gsettings set org.gnome.mutter center-new-windows true

# Workspaces apply to all additional monitors, not just primary
gsettings set org.gnome.mutter workspaces-only-on-primary false

# Set Cascadia Mono as the default monospace font
gsettings set org.gnome.desktop.interface monospace-font-name 'CaskaydiaMono Nerd Font 10'

# Reveal week numbers in the Gnome calendar
gsettings set org.gnome.desktop.calendar show-weekdate true

# Disable middle click paste
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste false