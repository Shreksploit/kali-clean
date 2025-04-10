#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

sudo apt-get install autorecon -y

#Sublime-text install
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y
sudo apt-get install sublime-text -y

#Alternative is to just set the wallpaper with this command
#xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s images/kali-red-sticker-16x9.jpg
sudo apt install kali-wallpapers-2023 -y
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/kali/kali-red-sticker-16x9.jpg
#Set lockscreen picture
sudo cp images/kali-cubism.jpg /usr/share/desktop-base/kali-cubism.jpg
sudo ln -sf /usr/share/desktop-base/kali-cubism.jpg /usr/share/desktop-base/kali-theme/login/background

#Set keyboard layout to Belgian (temporary)
sudo setxkbmap be
#Set keyboard layout to Belgian (permanent)
sudo cp config/keyboard /etc/default/keyboard

#Config terminal
sudo echo "TerminalEmulator=xfce4-terminal" > /home/kali/.config/xfce4/helpers.rc


#Requires authentication (username + personal access token)
#Access token on GitHub (Settings > Developer settings > Personal access tokens > Tokens (classic) > Generate new token > Scope: repo)
cd /home/kali
git clone https://github.com/Shreksploit/pentest_scripts.git

sudo reboot

#!!! MAYBE add some default terminal customization (XFCE4-terminal) 
