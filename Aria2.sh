#!/bin/bash

# Prompt for the URL
read -p "Enter the URL to download: " url

# Check if the URL is empty
if [ -z "$url" ]
then
  echo "Error: Please enter a URL."
  exit 1
fi

# Download the URL using aria2c with output to Downloads directory
aria2c -o "$HOME/Downloads/" "$url"

# Print a success message
echo "Download complete."

# Exit the script after download
exit 0
