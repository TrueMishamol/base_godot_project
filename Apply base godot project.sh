#!/bin/bash

BASE_GODOT_PROJECT="./project/."
PROJECT_FOLDERS_PATTERN="godot_*"
PROJECT_FOLDERS_PATH="../"

# Find all folders in PROJECT_FOLDERS_PATH with the name starting with PROJECT_FOLDERS_PATTERN and print them
for folder in $(find "$PROJECT_FOLDERS_PATH" -type d -name "${PROJECT_FOLDERS_PATTERN}"); do
	echo "Folder found: $folder"
	
	# Copy content of BASE_GODOT_PROJECT into folder
	cp -a "$BASE_GODOT_PROJECT" "$folder"
done
