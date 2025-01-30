#!/bin/bash

# Define the source and destination directories
SOURCE_DIR=$(pwd)
DEST_DIR="$HOME/.config"

# List all directories excluding 'scripts', '.idea', and others
directories_to_copy=()
for dir in "$SOURCE_DIR"/*; do
    if [ -d "$dir" ] && [[ ! "$dir" =~ /scripts$ ]] && [[ ! "$dir" =~ /\.idea$ ]]; then
        directories_to_copy+=("$dir")
    fi
done

# Copy each directory to the .config directory and rename it
for dir in "${directories_to_copy[@]}"; do
    # Copy the directory to the destination
    cp -r "$dir" "$DEST_DIR"
done

echo "Copying complete."