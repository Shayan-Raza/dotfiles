#! /bin/bash

echo "This script installs the config files of Shayan Raza"
echo

echo "Choose the config you want to install"
echo "1) Neo Vim"
echo "2) Alacritty"
echo "3) All"
echo

read -p "Enter the number of the config you want to install: " selected

# Functions for configs
neovim () { 
	echo "Neovim Config"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	mv ./nvim/ ~/.config
}
alacritty () { 
	echo "Alacritty Config"
	mv ./alacritty ~/.config
}

# Running functions based on user input
if [ $selected == 1 ] 
then
	neovim
elif [ $selected == 2 ]  
then
	alacritty
elif [ $selected == 3 ] 
then 
	echo "Chosen All"
	neovim 
	alacritty
else
	echo "Number not found"
	exit
fi

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


