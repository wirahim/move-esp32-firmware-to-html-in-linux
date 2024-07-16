#!/bin/bash

# Directory to search for .bin files
SOURCE_DIR="."

# Destination directory
DEST_DIR="/var/www/html/"

# Ensure script is run with sudo
if [ "$EUID" -ne 0 ]; then 
  echo "Please run as root or use sudo"
  exit 1
fi

# Find and move .bin files
find "$SOURCE_DIR" -name "*.bin" -exec mv {} "$DEST_DIR" \;

echo "All .bin files have been moved to $DEST_DIR"
