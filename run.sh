#!/bin/bash

# Define variables
OSRM_FILE="./pbf/india-latest.osrm"

# Run commands
echo "Starting osrm server..."
./osrm-backend/build/osrm-routed -p 5555 --algorithm mld india-latest.osrm
