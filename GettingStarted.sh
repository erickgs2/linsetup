#!/usr/bin/env bash
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update --yes
sudo apt install --yes software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible --yes
sudo apt install snapd

#-----INSTALL VSCODE-----
sudo snap install code --classic

#-----INSTALL MYSQL-----
sudo apt install mysql-server --yes
sudo mysql_secure_installation

#-----SET UP GITHUB SSH-----
sudo ansible-playbook ssh-key-installer.yml -K --ask-vault-pass -v
#-----INSTALL NODE-----
sudo ansible-playbook node.yml -K -v

#-----GIT CONFIGURATION-----
sudo git config --global user.email "agratobgs@gmail.com"
sudo git config --global user.name "Fawkes"
#sudo git remote set-url origin git@github.com:erickgs2/linsetup.git
#sudo git remote set-url origin git@github.com:erickgs2/Lerma.git

#-----INSTALL DOCKER----
#sudo apt-get update
#sudu apt-get upgrade
#sudo apt install docker.io --yes
#sudo systemctl start docker
#sudo systemctl enable docker 
#sudo systemctl status docker 
#sudo apt install docker-compose --yes
#sudo groupadd docker 
#sudo gpasswd -a ${USER} docker 
#su - $USER
