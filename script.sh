#!/usr/bin/env bash

echo "Installing postgresql and setting up nginx"
sudo apt-get update >/dev/null 2>&1
sudo apt-get install -y postgresql postgresql-contrib >/dev/null 2>&1
sudo add-apt-repository ppa:nginx/stable
sudo apt-get -y  install nginx
sudo update-rc.d nginx defaults
sudo service nginx enable
sudo service nginx restart
