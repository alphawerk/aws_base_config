#!/bin/bash
clear

echo "Pre-config script running"
echo "Version 0.0.3"


sudo apt -y update
sudo apt -y upgrade
sudo apt -y install docker.io

sudo wget -O /usr/bin/fetch https://github.com/gruntwork-io/fetch/releases/download/v0.4.1/fetch_linux_amd64
sudo chmod 755 /usr/bin/fetch

