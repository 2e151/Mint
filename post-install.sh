#!/bin/bash

# Update and upgrade the system
sudo apt-get update -y 
sudo apt-get upgrade -y

# Install necessary packages
sudo apt-get install -y build-essential vim git curl wget gnupg software-properties-common lynx links 

sudo apt-get install -y libc6 libncurses6 libncurses6:i386 zlib1g libssl-dev make gcc g++

# Configure firewall to allow connections from 192.168.86.x
sudo ufw allow from 192.168.86.0/24
sudo ufw enable

# Notify user of completion
echo "Post-installation script completed!"
