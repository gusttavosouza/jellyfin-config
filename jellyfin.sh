#!/bin/bash

RUNNING=$(docker ps -a | grep -c jellyfin)

if [ $RUNNING = 1 ]; then
    echo "Stopping Jellyfin"
    cd $PWD
    docker compose down
else
    echo "Started Jellyfin"
    cd $PWD
    docker compose up -d
    echo "Running Jellyfin"
fi
