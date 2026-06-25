#!/bin/bash

set -e

echo "[INFO] Updating..."
sudo apt update

echo "[INFO] Installing requirements..."
sudo apt install -y gpg git curl

echo "[INFO] Installing repository key..."

sudo mkdir -p /etc/apt/keyrings

curl -fsSL \
https://raw.githubusercontent.com/Super-Linux/Icecream-Linux-gpg-key-/main/icecream.asc \
| sudo gpg --dearmor -o /etc/apt/keyrings/icecream.gpg

read -p "Do you want to run sudo apt clean? [y/N] " ANSWER

if [[ "$ANSWER" =~ ^[Yy]$ ]]; then
    echo "[INFO] Running sudo apt clean..."
    sudo apt clean
else
    echo "[INFO] Skipping sudo apt clean..."
fi
