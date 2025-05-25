# Description: This script cleans up macOS junk files from cartridges, specifically removing .DS_Store and ._* files.clear
#!/bin/bash

echo "🧹 Cleaning macOS junk files from cartridges (.DS_Store and ._* files)..." 

CARTRIDGE_ROOT="./"  # Set to your cartridges' root directory
cartridges=$(find "$CARTRIDGE_ROOT" -type d -name 'cartridges')

for cartridge in $cartridges
do
  parent_folder=$(dirname "$cartridge")
  echo "🔍 Cleaning $parent_folder..."
  find "$parent_folder" -name '._*' -delete
  find "$parent_folder" -name '.DS_Store' -delete
done

find . -name '._*' -delete && find . -name '.DS_Store' -delete

echo "✅ Cleanup complete!"
