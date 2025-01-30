#!/bin/bash

source config.sh

# Update everything

$PKG $UPDATE_ARG

# Install AUR package manager (Arch only)

if command -v pacman &> /dev/null; then
    sh scripts/paru-installer.sh
fi

# Install config dirs

sh scripts/copy_dirs_to_config.sh

# Install packages

$AUR_PKG $INSTALL_ARG $( IFS=$' '; echo "${PACKAGES[*]}" )