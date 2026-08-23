echo installing config files

SCRIPT_DIR="$(cd "$(dirname "$(BASH_SOURCE[0])")" && pwd)"


mkdir -p ~/.config/kitty

mkdir -p ~/.config/i3

mkdir -p ~/.config/polybar

mkdir -p ~/.config/compton


cp $SCRIPT_DIR/configs/polybar.ini ~/.config/polybar/config.ini
cp $SCRIPT_DIR/configs/kitty.conf ~/.config/kitty/kitty.conf
cp $SCRIPT_DIR/configs/compton.conf ~/.config/compton/c.conf
cp $SCRIPT_DIR/configs/i3config ~/.config/i3/config

