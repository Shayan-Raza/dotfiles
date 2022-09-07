#! /bin/bash

echo "Easy-Configs install script"
echo

# Functions for configs
neovim () { 
	mv -f ./nvim/ ~/.config
}

alacritty () { 
	mv -f ./alacritty ~/.config
}

i3 () { 
	mv -f ./i3 ~/.config	
}

vscode () {
    mv -f ./vscode/settings.json ~/.config/Code/User
    mv -f /vscode/keybinds.json ~/.config/Code/User
    /bin/bash ./vscode/extensions.sh
}

# Running functions
# Neovim
while true; do 
    read -p "Do you want to install the neovim configs (Y/n): " yn
    case $yn in 
        [Yy]* )neovim ; 
            break;;
        [Nn]* ) echo "You chose not to install the neovim config" ;
            break;;
    * ) echo "Please answer yes or no.";;
    esac
done

# Alacritty
while true; do 
    read -p "Do you want to install the alacritty configs (Y/n): " yn
    case $yn in 
        [Yy]* )alacritty ;
            break;;
        [Nn]* ) echo "You chose not to install the alacritty config"
            break;;
        * ) echo "Please answer yes or no"
    esac
done

# i3
while true; do 
    read -p "Do you want to install the i3 configs (Y/n): " yn
    case $yn in 
        [Yy]* )i3 ; 
            break;;
        [Nn]* ) echo "You chose not to install the i3 config"
            break;;
        * ) echo "Please answer yes or no"
    esac
done

# vscode
while true; do
    read -p "Do you want to install the vscode configs (Y/n): "yn
    case $yn in 
        [Yy]* )vscode ;
            break;;
        [Nn]* ) echo "You chose not to install the vscode config" ;
            break;;
        * ) echo "Please answer yes or no.";;
    esac
done

#Font Install
while true; do
	read -p "Do you want to install the JetBrains Mono Font (Y/n): " yn
    case $yn in
        [Yy]* ) /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)" ;
                break;;
        [Nn]* ) echo "You choose not to install the font." ;
                break;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "Exiting the script"
