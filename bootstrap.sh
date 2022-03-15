#!/bin/bash

if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
   test -d "${xpath}" && test -x "${xpath}" ; 
then
   echo "Command Line Tools already Installed"
else
   sudo softwareupdate -i "Command Line Tools for Xcode-13.2"
fi

# Git
rm -rf ~/.gitconfig ~/.gitignore_global 
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s $PWD/.gitignore_global ~/.gitignore_global

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
rm -rf ~/.zprofile
ln -s $PWD/.zprofile ~/.zprofile

export PATH=/opt/homebrew/bin:$PATH

# Update
brew update > /dev/null;

# Install all from Brewfile
brew bundle

# Clean
brew cleanup

# Linking dotfiles to home directory
rm -rf ~/.zshrc
ln -s $PWD/.zshrc ~/.zshrc

rm -rf ~/.nanorc
ln -s $PWD/.nanorc ~/.nanorc

rm -rf ~/.config/starship.toml
mkdir -p ~/.config
ln -s $PWD/.config/starship.toml ~/.config/starship.toml

etc=/Applications/Docker.app/Contents/Resources/etc
sudo mkdir -p /usr/local/share/zsh/site-function
sudo ln -s $etc/docker.zsh-completion /usr/local/share/zsh/site-functions/_docker
sudo ln -s $etc/docker-compose.zsh-completion /usr/local/share/zsh/site-functions/_docker-compose

source ~/.zshrc
