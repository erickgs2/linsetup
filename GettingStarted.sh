#!/usr/bin/env bash
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
sudo apt install --yes software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
sudo apt install snapd
ansible-galaxy collection install community.general

ansible-playbook ssh-key-installer.yml -K --ask-vault-pass -v
ansible-playbook vsCode.yml -K -v
ansible-playbook node.yml -K -v
