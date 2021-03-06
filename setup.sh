#!/bin/bash

# Install Homebrew
if ! type "brew" > /dev/null; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Brewfile
[ ! -d ~/Brewfile ] && git clone https://github.com/ryoma123/Brewfile.git ~/Brewfile

# Install Apps
brew bundle --file=~/Brewfile/Brewfile
brew cleanup
brew doctor
brew cask doctor
