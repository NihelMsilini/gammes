#!/usr/bin/env bash

echo "Installing postgresql and setting up nginx"
sudo apt-get update >/dev/null 2>&1
sudo apt-get install -y postgresql postgresql-contrib >/dev/null 2>&1
sudo add-apt-repository ppa:nginx/stable
sudo apt-get -y  install nginx
sudo update-rc.d nginx defaults
sudo service nginx enable
sudo service nginx restart
echo "Database connetion"
su - postgres -c "psql -c \"create database dbspt;\""
su - postgres -c "psql -c \"\\connect dbspt\""
su - postgres -c "psql -c \"create table tabshell (name varchar(20), first varchar(20), last varchar(20), phone varchar(20), email varchar(20), pdf varchar(20), src varchar(20), url varchar(20), social varchar(20), github varchar(20), twitter varchar(20), linkedin varchar(20));\""
su - postgres -c "psql -c \"select * from tabshell;\""

