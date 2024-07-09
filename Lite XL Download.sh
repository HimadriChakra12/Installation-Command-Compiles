#!/bin/bash
sudo apt install aria2

# Prompt for the URL
echo "You are Downloading Lite XL" 

cd ~/Downloads

# Check if the URL is empty
if [ -z "$Y" ]
then
  echo "Download canceled"
  exit 1
fi

# Download the URL using aria2c with output to Downloads directory
aria2c https://github.com/lite-xl/lite-xl/releases/download/v2.1.5/lite-xl-v2.1.5-addons-linux-x86_64-portable.tar.gz

# Print a success message
echo "Download complete."

echo Installing...

tar -xzf ~/Downloads/lite-xl-v2.1.5-addons-linux-x86_64-portable.tar.gz

rm -rf $HOME/.local/share/lite-xl $HOME/.local/bin/lite-xl

mkdir -p $HOME/.local/bin && cp lite-xl $HOME/.local/bin/

mkdir -p $HOME/.local/share/lite-xl && cp -r data/* $HOME/.local/share/lite-xl/

echo -e 'export PATH=$PATH:$HOME/.local/bin' >> $HOME/.bashrc

PATH=$HOME/.local/bin:$PATH

xdg-desktop-menu forceupdate

echo "Installation complete"
