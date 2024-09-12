set -e

ascii_art='

 ______   ______     ______     ______     __     ______     ______    
/\  ___\ /\  __ \   /\  == \   /\  == \   /\ \   /\  ___\   /\  __ \   
\ \  __\ \ \  __ \  \ \  __<   \ \  __<   \ \ \  \ \ \____  \ \  __ \  
 \ \_\    \ \_\ \_\  \ \_____\  \ \_\ \_\  \ \_\  \ \_____\  \ \_\ \_\ 
  \/_/     \/_/\/_/   \/_____/   \/_/ /_/   \/_/   \/_____/   \/_/\/_/ 
                                                                       
'


echo -e "$ascii_art"
echo "=> Fabrica is for fresh Ubuntu 24.04 installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Fabrica..."
rm -rf ~/.local/share/fabrica
git clone https://github.com/csalted/fabrica.git ~/.local/share/fabrica >/dev/null
if [[ $FABRICA_REF != "master" ]]; then
	cd ~/.local/share/fabrica
	git fetch origin "${FABRICA_REF:-stable}" && git checkout "${FABRICA_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/fabrica/install.sh
