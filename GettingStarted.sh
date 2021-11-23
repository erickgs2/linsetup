#!/usr/bin/env bash
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update --yes
sudo apt install --yes software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible --yes
sudo apt install snapd
ansible-galaxy collection install community.general

sudo apt install mysql-server --yes
sudo mysql_secure_installation

sudo ansible-playbook ssh-key-installer.yml -K --ask-vault-pass -v
sudo ansible-playbook vsCode.yml -K -v
sudo ansible-playbook node.yml -K -v
#ansible-playbook workbench.yml -K -v

sudo git config --global user.email "agratobgs@gmail.com"
sudo git config --global user.name "Fawkes"
sudo git remote set-url origin git@github.com:erickgs2/linsetup.git
sudo git remote set-url origin git@github.com:erickgs2/Lerma.git
