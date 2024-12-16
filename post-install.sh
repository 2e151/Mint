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

#Install Theme
sudo apt-get install -y arc-theme papirus-icon-theme

#Set the New Theme and Icons
xfconf-query -c xsettings -p /Net/ThemeName -s "Arc-Dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus"

#Install a Fancy Dock (Plank)
sudo apt-get install -y plank

mkdir -p ~/.config/autostart
echo -e "[Desktop Entry]\nType=Application\nExec=plank\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName=Plank" > ~/.config/autostart/plank.desktop

xfconf-query -c xfwm4 -p /general/use_compositing -s true

sudo apt-get install -y fonts-roboto
xfconf-query -c xsettings -p /Gtk/FontName -s "Roboto 10"

# Notify user of completion
echo "Post-installation script completed!"

xfce4-session-logout --logout
