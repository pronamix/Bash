#!/bin/bash

# Install Dependencies
sudo DEBIAN_FRONTEND=noninteractive apt install -y dos2unix
sudo pacman -Sy --noconfirm dos2unix --overwrite '*'

# Script Direcotry
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd ) >/dev/null

# Set Permissions
shopt -s globstar
sudo dos2unix $SCRIPT_DIR/**/*
sudo chmod +x -R $SCRIPT_DIR/**/*
