#!/bin/bash

# Define the source directory (where the files are)
source_dir="$HOME/Downloads"  # Replace with your actual directory

# Loop through each file in the source directory
for file in "$source_dir"/*; do
  # Get the file extension
  extension="${file##*.}"

  # Check if the extension is empty (not recommended for hidden files)
  if [ -z "$extension" ]; then
    continue  # Skip files without extension
  fi

  # Create the destination directory (if it doesn't exist)
  destination_dir="$HOME/Downloads/Organized/$extension"
  mkdir -p "$destination_dir"

  # Move the file to the destination directory
  mv "$file" "$destination_dir"
done

echo "File organization completed!"

