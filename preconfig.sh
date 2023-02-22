#!/bin/bash


echo "Pre-config script running"
echo "Version 0.0.4"

sudo apt -y install docker.io docker-compose git gh

sudo wget -O /usr/bin/fetch https://github.com/gruntwork-io/fetch/releases/download/v0.4.1/fetch_linux_amd64
sudo chmod 755 /usr/bin/fetch
sudo apt install -y apache2-utils
sudo docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

echo "Authenticating to GitHub, please provide auth token (found in alphawerk/credentials) and use the following command"
echo " echo "<token>" | gh auth login --with-token"
echo ""
echo "To clone a repo use"
echo "gh clone repo <reponame>"
echo "use username and personal access token for passwork"
