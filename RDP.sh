#! /bin/bash
printf " Installing RDP Be Patience... " >&2
{
sudo useradd -m ALOK
sudo adduser ALOK sudo
echo 'ALOK:8426' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
sudo apt-get wget
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install nautilus nano -y 
sudo adduser ALOK chrome-remote-desktop
} &> /dev/null &&
printf "\n Setup Complete " >&2 ||
printf "\n Error Occured " >&2
printf '\nCheck http://remotedesktop.google.com/headless  Copy Command Debian Linux And Paste It Down\n'
read -p "Paste Here: " CRP
su - ALOK -c """$CRP"""
printf 'Check http://remotedesktop.google.com/access/ Visit Here\n'
sudo apt-get upgrade
username = input("DO NOTHING : ")
