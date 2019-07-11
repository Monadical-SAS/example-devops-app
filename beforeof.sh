#!/bin/bash

versioncompose = "docker-compose --version"

#Upgrades and Packages
sudo apt-get update && sudo apt-get upgrade -y \\ 
	&& sudo apt-get install python3.7 python3-pip -y  && apt-get install pipenv -y \\
	&& sudo apt-get docker.io

#Instalacion Docker-Compose

if sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose 
 then

 sudo chmod +x /usr/local/bin/docker-compose

fi
 echo $versioncompose

#Access SSH

nano /etc/ssh/sshd_config && echo >> Port 44

#Git Clone

git clone https://github.com/LibanaAbdul/example-devops-app.git /opt/banana && cd /opt/banana/code &&

#create virtual enviroment with django
pipenv install Django==2.2.0 && pipenv shell

#Create hello world
# Hacer push por cada cambio

#Create Dockerfile and docker-compose.yml

touch Dockerfile & docker-compose.yml
