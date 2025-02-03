#!/bin/bash

PKG="sudo pacman" # Distro package
AUR_PKG="paru" # Or any other package manager you want
UPDATE_ARG="-Syuu" 
INSTALL_ARG="-S"
PACKAGES=( # Check name for your package manager
          'bluez' 'bluez-utils' # Bluetooth
          'udiskie' # Disk auto-mount
          'nemo' # File manager
          'noto-fonts' 'ttf-liberation' # Fonts
          'pipewire' 'pipewire-pulse' 'pavucontrol' 'imv' 'mpv' # Audio & Video
          'tesseract' 'ollama-cuda' 'cuda' 'nvidia-open-dkms' 'nvidia-utils' # LLM, AI, GPU drivers
          'proton-cachyos' 'lutris' 'steam' 'rare' 'gamescope-nvidia' 'wine' 'winetricks' # Gaming
          'firefox' # Browser
          'zed' 'helix' # Editors
          'wofi' 'hyprland' 'eww' 'alacritty' 'cliphist' 'rofimoji' 'swaybg' 'brightnessctl' 'grim' 'slurp' 'wl-copy')  # Others
