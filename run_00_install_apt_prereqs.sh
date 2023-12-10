#!/bin/bash
#. ./.profile
set -eu

echo "***********************************"
echo "** Install APT Packages"
echo "***********************************"

# NOTE: Will require sudo
DEBIAN_FRONTEND=noninteractive \
    sudo apt-get update && \
    sudo apt-get install --yes build-essential procps curl file git
