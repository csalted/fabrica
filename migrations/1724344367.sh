# Check if fastfetch config.jsonc is already set
if [ -f "$HOME/.config/fastfetch/config.jsonc" ]; then
  gum confirm "It appears that a fastfetch configuration is already set. Do you want to overwrite it?" && rm "$HOME/.config/fastfetch/config.jsonc"
fi

# Only attempt to set configuration if fastfetch is not already set
if [ ! -f "$HOME/.config/fastfetch/config.jsonc" ]; then
  # Use Fabrica fastfetch config
  mkdir -p ~/.config/fastfetch
  cp "$FABRICA_PATH/configs/fastfetch.jsonc" ~/.config/fastfetch/config.jsonc
fi
