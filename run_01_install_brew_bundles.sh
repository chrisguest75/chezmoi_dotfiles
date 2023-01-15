#!/bin/bash
#. ./.profile
set -eu

echo "***********************************"
echo "** Install Brew Bundle"
echo "***********************************"

# Homebrew
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -d /opt/homebrew && eval "$(/opt/homebrew/bin/brew shellenv)"
test -f /usr/local/bin/brew && eval "$(/usr/local/bin/brew shellenv)"

# Configure brew bundle
export HOMEBREW_BUNDLE_FILE="$HOME/.BrewfileContainer"
export HOMEBREW_BUNDLE_NO_LOCK=true

# Install brew bundles
brew bundle install
