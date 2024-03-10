#!/bin/zsh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add to profile
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/fcrozetta/.zprofile

# validate profile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Fira code
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# pyenv
brew install pyenv

#! Remember to update this
pyenv install 3.12.2
pyenv global 3.12.2
