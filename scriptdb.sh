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
su - postgres -c "psql -c \"create database dbspt;\"" > /dev/null 2>&1
su - postgres -c "psql -c \"\\connect dbspt\""
#su - postgres -c "psql -c \"create table tabshell (name varchar(20), first varchar(20), last varchar(20), phone varchar(20), email varchar(20), pdf varchar(20), src varchar(20), url varchar(20), social varchar(20), github varchar(20), twitter varchar(20), linkedin varchar(20));\"" >/dev/null 2>&1
su - postgres -c "psql -c \"select * from tabshell;\""

tabsh=( $( awk -F ":" '{print $1}' formulaire.yaml) )
l=${#tabsh[@]}
ch="create table tab21("
i=0
while [ "$i" -lt "$(($l-1))" ]
do
ch="$ch ${tabsh[$i]} varchar(50),"
((i++))
done
ch="$ch ${tabsh[${#tabsh[@]}-1]} varchar(50));"
echo "$ch"
su - postgres -c "psql -c \" $ch\""

su - postgres -c "psql -c \" select * from tab21\""

tabsh2=( $( awk -F ":" '{print $2}' formulaire.yaml) )
l2=${#tabsh2[@]}
ch2="insert into tab21 values ( '"
z=0
while [ "$z" -lt "$(($l2-1))" ]
do
ch2="$ch2 ${tabsh2[$z]}' ,'"
((z++))
done
ch2="$ch2 ${tabsh2[${#tabsh2[@]}-1]} ');"
echo "$ch2"
su - postgres -c "psql -c \" $ch2\""
su - postgres -c "psql -c \" select * from tab21\""

