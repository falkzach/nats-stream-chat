#!/bin/bash

# Define the path to the JSON file
JSON_FILE="./emojis.json"

# Get a random number between 1 and 100
RANDOM_KEY=$(( (RANDOM % 100) + 1 ))

# Extract the emoji using jq
EMOJI=$(jq -r --arg key "$RANDOM_KEY" '.[$key]' "$JSON_FILE")

# Echo the emoji
echo "$EMOJI"
