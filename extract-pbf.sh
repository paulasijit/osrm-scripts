#!/bin/bash

# Define variables
PROFILE="../profiles/car.lua"
OSM_PBF="../../pbf/india-latest.osm.pbf"
OSRM_FILE="../../pbf/india-latest.osrm"

# Run commands
echo "Starting osrm-extract..."
osrm-extract -p $PROFILE $OSM_PBF
echo "Finished osrm-extract."

echo "Starting osrm-partition..."
osrm-partition $OSRM_FILE
echo "Finished osrm-partition."

echo "Starting osrm-customize..."
osrm-customize $OSRM_FILE
echo "Finished osrm-customize."

echo "All steps completed."
