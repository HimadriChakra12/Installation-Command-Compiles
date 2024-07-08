#!/bin/bash
sudo apt install fzf
cd ~/
# Use fzf to find the package to install
package=~/$(fzf)

# Check if user selected a package
if [[ -z "$package" ]]; then
  echo "No package selected."
  exit 1
fi

# Prompt for confirmation before using sudo
read -p "Are you sure you want to install $package with sudo apt install? (y/n) " confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
  # Use sudo to install the chosen package
  sudo apt install "$package"
  echo "Installation process complete."
else
  echo "Installation cancelled."
fi
exit 1


