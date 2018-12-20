#!/bin/bash

# This script installs usefull tools using brew.
# The tools are typically work related.

brew update
brew doctor

CASK_TOOLS=(
)

for i in ${CASK_TOOLS[@]}; do
    brew cask install ${i}
done

TOOLS=(
    node
    nvm
    vault
    kubernetes-cli
    kubernetes-helm
    kops
)

for i in ${TOOLS[@]}; do
    brew install ${i}
done

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
