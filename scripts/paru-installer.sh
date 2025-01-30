#!/bin/bash

PKG="sudo pacman" # Distro package
INSTALL_ARG="-S"

# We need to install rust
sudo $PKG $INSTALL_ARG rustup, base-devel

# Install rust components
rustup # accept all defaults

# Let's clone the source code first
git clone https://aur.archlinux.org/paru.git

# Go to folder and install it
cd paru && makepkg -si

# Clean exit
cd ../ && rm -rf paru

# Create the config folder
mkdir -p ~/.config/paru

# Download the config folder from dots
wget https://raw.githubusercontent.com/katsuki-yuri/dots/master/.config/paru/paru.conf
