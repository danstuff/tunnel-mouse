#!/bin/bash

sudo pacman -S wireguard-tools
sudo apt install wireguard

sudo systemctl enable wg-quick@wg0
sudo systemctl start wg-quick@wg0

sudo wg show

./pull-tunnel.sh
