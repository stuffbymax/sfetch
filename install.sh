#!/bin/bash

# This script installs the advanced-fetch software to the user's home directory using a local fetch script

# Define variables
SOFTWARE_NAME="afetch" 
FETCH_SCRIPT="./afetch"  # Path to the local fetch script
TEMP_DIR=$(mktemp -d)

# Function to display messages
display_message() {
    echo "$1"
}



# Function to move fetch script to /usr/local/bin and set executable permissions
setup_fetch_script() {
    display_message "Setting up Afetch script..."
    chmod +x afetch
    sudo mv afetch /usr/local/bin/afetch
    display_message "Setting executable permissions..."
    sudo chmod +x /usr/local/bin/afetch
    display_message "Fetch script setup complete."
}

# Main function
main() {
    setup_fetch_script
    
}

# Run the script
main
