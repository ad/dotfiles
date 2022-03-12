#!/bin/bash

if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
   test -d "${xpath}" && test -x "${xpath}" ; 
then
   echo "Command Line Tools already Installed"
else
   sudo softwareupdate -i "Command Line Tools for Xcode-13.2"
fi

# Git
rm ~/.gitconfig ~/.gitignore_global 
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s $PWD/.gitignore_global ~/.gitignore_global

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
rm ~/.zprofile
ln -s $PWD/.zprofile ~/.zprofile

export PATH=/opt/homebrew/bin:$PATH

# Update
brew update > /dev/null;

# Install all from Brewfile
brew bundle

# Clean
brew cleanup

# Linking dotfiles to home directory
rm ~/.zshrc
ln -s $PWD/.zshrc ~/.zshrc

rm ~/.nanorc
ln -s $PWD/.nanorc ~/.nanorc

mkdir ~/.config
ln -s $PWD/.config/starship.toml ~/.config/starship.toml
