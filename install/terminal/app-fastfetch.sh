# Display system information in the terminal
sudo add-apt-repository -y ppa:zhangsongcui3371/fastfetch
sudo apt update -y
sudo apt install -y fastfetch

# Only attempt to set configuration if fastfetch is not already set
if [ ! -f "$HOME/.config/fastfetch/config.jsonc" ]; then
  # Use Fabrica fastfetch config
  mkdir -p ~/.config/fastfetch
  cp ~/.local/share/fabrica/configs/fastfetch.jsonc ~/.config/fastfetch/config.jsonc
fi
