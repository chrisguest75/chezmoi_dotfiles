#!/bin/sh
#. ./.profile
set -eu

echo "***********************************"
echo "** Install Brew Bundle"
echo "***********************************"

# Configure brew bundle
export HOMEBREW_BUNDLE_FILE="$HOME/.BrewfileContainer"
export HOMEBREW_BUNDLE_NO_LOCK=true

# Install brew bundles
brew bundle install
