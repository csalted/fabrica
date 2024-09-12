# Configure the bash shell using Fabrica defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/fabrica/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source ~/.local/share/fabrica/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Fabrica defaults
cp ~/.local/share/fabrica/configs/inputrc ~/.inputrc
