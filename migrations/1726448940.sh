# Installing Poe AI
sudo echo "Running upgrade migration..."

# Add new desktop applications icons
source $FABRICA_PATH/applications/Poe.sh

gum confirm "Set your application dock to default with new apps?" && source $FABRICA_PATH/install/desktop/set-dock.sh