#!/usr/bin/env bash
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update --yes
sudo apt install --yes software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible --yes
sudo apt install snapd
#ansible-galaxy collection install community.general
sudo snap install code --classic

#sudo apt install mysql-server --yes
#sudo mysql_secure_installation

sudo ansible-playbook ssh-key-installer.yml -K --ask-vault-pass -v
#sudo ansible-playbook vsCode.yml -K -v
sudo ansible-playbook node.yml -K -v
#ansible-playbook workbench.yml -K -v

sudo git config --global user.email "agratobgs@gmail.com"
sudo git config --global user.name "Fawkes"
sudo git remote set-url origin git@github.com:erickgs2/linsetup.git
#sudo git remote set-url origin git@github.com:erickgs2/Lerma.git

#-----INSTALL DOCKER----
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt update
sudo apt-get install \
   ca-certificates \
   curl \
   gnupg \
   lsb-release
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
 echo \
 "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
apt-cache madison docker-ce
sudo apt-get install docker-ce="8.06.1~ce~3-0~ubuntu" docker-ce-cli="8.06.1~ce~3-0~ubuntu" containerd.io
sudo docker run hello-world
