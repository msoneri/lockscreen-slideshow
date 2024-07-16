#!/bin/bash

# The directory that includes your images.
directory="/home/.../Pictures/wallpapers"

# Kali Linux default lockscreen background image path.
destination="/usr/share/desktop-base/kali-theme/login/background"

# Check if the directories set
if [ -z "$directory" ] || [ -z "$destination" ]; then
  echo "Configuration error."
  exit 1
fi

random_file=$(find "$directory" -type f | shuf -n 1)

$(cp $random_file $destination)
