#!/bin/bash
#. ./.profile
set -eu

echo "***********************************"
echo "** Install Brew"
echo "***********************************"

# Install brew
# SEE: https://github.com/Homebrew/install/#install-homebrew-on-macos-or-linux
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
