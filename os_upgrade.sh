#!/bin/bash

echo "OS Upgrade script running"
echo "Version 0.0.4"

sudo apt-get -y update
sudo apt-get -y upgrade
sudo reboot
