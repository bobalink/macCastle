#!/bin/bash

# This script installs usefull tools using brew.
# The tools are typically work related.

CASK_TOOLS=(
    intellij-idea
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


