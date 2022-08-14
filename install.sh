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
	echo "Chosen NeoVim"
	sudo pacman -S neovim
	mv ./nvim/ ~/.config
}
alacritty () { 
	echo "Chosen Alacritty"
	sudo pacman -S alacritty
	mv ./alacritty ~/.config
}

# Running functions based on user input
if [ $selected == 1 ] 
then
	neovim
elif [ $selected == 2 ]  
then
	alacritty
fi

