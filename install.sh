#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt-get install autorecon

#Sublime-text install
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text


git clone https://github.com/Shreksploit/pentest_scripts.git
