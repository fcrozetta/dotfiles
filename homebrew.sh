#!/bin/zsh

# Check if Homebrew is installed
if test $(which brew); then
    echo "Homebrew is already installed"
    exit 0
fi
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add to profile
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ${HOME}/.zprofile

# validate profile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Fira code
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

brew install ripgrep
brew install fzf
brew install bat
brew install vim

# Need to get used to this
brew install --cask ghostty

# uv - python versions will be installed as needed
brew install uv
