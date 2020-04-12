#! /bin/bash
sudo apt-get update
# install Docker Community Edition onto the dev environment to compile docker images

#Install dependencies for Docker-CE repo to be usable
sudo apt install apt-transport-https ca-certificates curl software-properties-common
#Add the Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#Verify the GPG key
sudo apt-key fingerprint 0EBFCD88
#Add the stable docker repo
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#Install Docker-CE
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
#Install NodeJS for the NodeJS application compilation automation
sudo apt install nodejs -y
#create test account
sudo adduser --home /home/test_account --disabled-password
#expire password to force change on next login
sudo passwd --expire test_account
#add in private and public key generation for vagrant ssh
sudo ssh-keygen -f test_account
#add in github pull below and copy command to /home/test_account

#put in password set thingamajig here?