#!/bin/bash
#. ./.profile
set -eu

echo "***********************************"
echo "** Install APT Packages"
echo "***********************************"

# NOTE: Will require sudo
DEBIAN_FRONTEND=noninteractive \
    apt-get update && \
    apt-get install --yes build-essential procps curl file git
