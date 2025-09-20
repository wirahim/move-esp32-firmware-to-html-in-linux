# move-esp32-firmware-to-html-in-linux
Use this script to move all "*.bin" (firmware) files from the current folder to the "/var/www/html/" folder.

The following script is generated using Chat GPT. Use at your own risk.


## 1. Copy the following script
```bash
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
find "$SOURCE_DIR" -maxdepth 1 -type f -name "*.bin" -exec mv {} "$DEST_DIR" \;

echo "All .bin files have been moved to $DEST_DIR"
```

## 2. Create a file named 'move_bin_files.sh'. Paste the above script 'ctrl+v'
```bash
sudo nano move_bin_files.sh
```
## 3. Press 'ctrl+x' and then 'y' to save and exit the file
## 4. Make the script executable:
```bash
sudo chmod +x move_bin_files.sh
```
## 5. Run the script with 'sudo':
```bash
sudo ./move_bin_files.sh
```
