#!/bin/bash
sudo apt install fzf
cd ~/Downloads/Organized/jar
# Use fzf to find the package to install
package=~/Downloads/Organized/jar/$(fzf)

# Check if user selected a package
if [[ -z "$package" ]]; then
  echo "No package selected."
  exit 1
fi

# Prompt for confirmation before using sudo
read -p "Are you sure you want to install $package with java? (y/n) " confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
  # Use sudo to install the chosen package
  java -jar "$package"
  echo "Installation process complete."
else
  echo "Installation cancelled."
fi
exit 1


