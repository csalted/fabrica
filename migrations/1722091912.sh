sudo echo "Running upgrade migration..."

# Add rustc and pgsql client libs
source $FABRICA_PATH/install/terminal/libraries.sh

# Set name and class for desktop files
source $FABRICA_PATH/applications/About.sh
source $FABRICA_PATH/applications/Activity.sh
source $FABRICA_PATH/applications/Basecamp.sh
source $FABRICA_PATH/applications/HEY.sh
source $FABRICA_PATH/applications/Docker.sh
source $FABRICA_PATH/applications/Neovim.sh
source $FABRICA_PATH/applications/Fabrica.sh
source $FABRICA_PATH/applications/WhatsApp.sh
