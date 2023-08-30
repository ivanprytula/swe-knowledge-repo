#!/bin/bash

# Set the directories to exclude
EXCLUDE=(".venv" "dir2")

# Loop through all directories in the current directory
for dir in */; do
    # 1. Check if the directory is in the exclude list
    # if [[ ! " ${EXCLUDE[@]} " =~ " ${dir} " ]]; then
    #     # 1. Create a README.md file in the directory
    #     touch "${dir}README.md"
    # fi

    # 2. Check if a README.md file exists in the directory
    # if [[ -f "${dir}README.md" ]]; then
    #     # 2.1Remove the README.md file from the directory
    #     rm "${dir}README.md"
    # fi

    # 2.2 Find all files with the ending "-notes.md" in the current directory
    # find "${dir}" -type f -name "*-notes.md" -exec rm {} \;

    # 3. Remove the trailing slash from the directory name
    dir_name="${dir%/}"
    # # Create a Markdown file with the directory name as prefix and suffix "-notes"
    touch "${dir}${dir_name}_notes.md"
    
done
