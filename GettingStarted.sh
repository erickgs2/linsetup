#!/usr/bin/env bash
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update --yes
sudo apt install --yes software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible --yes

#-----INSTALL VSCODE-----
sudo snap install code --classic

#-----INSTALL MYSQL-----
sudo apt install mysql-server --yes
sudo mysql_secure_installation

#-----INSTALL NODE-----
sudo apt install npm --yes
sudo npm -g update
sudo npm i -g n --yes
sudo n install 12.20

#-----INSTALL ANGULAR-----
sudo npm i -g @angular/cli --yes

#-----GIT CONFIGURATION-----
sudo git config --global user.email "agratobgs@gmail.com"
sudo git config --global user.name "Fawkes"

#-----INIT COMMANDS LERMA MYSQL-----
CREATE USER 'codeusr'@'localhost' IDENTIFIED BY 'Flat001298';
CREATE USER 'codeusr'@'%' IDENTIFIED BY 'Flat001298';
ALTER USER 'codeusr'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Flat001298';
ALTER USER 'codeusr'@'%' IDENTIFIED WITH mysql_native_password BY 'Flat001298';
GRANT ALL ON *.* TO 'codeusr'@'localhost';
GRANT ALL ON *.* TO 'codeusr'@'%';
flush privileges;

# IMPORT DATA FORM A SQL FILE ON MYSQL -----
sudo mysql -u codeusr -p < Dump20220424.sql

