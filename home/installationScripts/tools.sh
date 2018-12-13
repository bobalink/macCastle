#!/bin/bash

# This script installs usefull tools using brew.
# The tools are typically work related.

CASK_TOOLS=(
    atom
    slack
    iterm2
    #google-chrome
    docker
    thefuck
)

for i in ${CASK_TOOLS[@]}; do
    brew cask install ${i}
done

TOOLS=(
    docker-machine
)

for i in ${TOOLS[@]}; do
    brew install ${i}
done

# Set defaults 
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE

# Addition settings
# Atom -- sublime test's features
apm install sublime
cd ~/.atom/packages/
git clone https://github.com/idleberg/atom-sublime sublime
yarn || npm install

