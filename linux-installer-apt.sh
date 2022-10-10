#!/bin/bash





if ! [[ $EUID != 0 ]];
then
   echo "You are root, checking for internet connection..."

else

echo "You must be root to run this script. To become root you can write: $ sudo su     in the terminal!"

exit

fi

if ping -c 1 8.8.8.8 >/dev/null; then
  echo "The startup-check of the installer was successful. The installer will be started!"
else
  echo "You do not have an internet connection. To run the script for the installation, you must have an internet connection!"
fi





echo "Welcome to the Linux Installer!"
echo "-----------By SimSon-----------"

sleep 5

clear

echo "With this installer you can install the most used applications in minutes!"

sleep 5

echo "During the fully automatic installation, you can grab a coffee!"

sleep 5

clear





echo "The first thing we do is to update your system so that all packages are up to date!"

apt update && apt upgrade -y





echo "Now important repositories will be installed!"

sleep 5

apt config-manager --add-repo universe

apt config-manager --add-repo multiverse

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

apt update && apt upgrade -y

clear





echo "Now the most used applications are installed!"

sleep 5

clear

echo "In the first part of the software installation all dnf programs (22) will be installed!"

apt install virtualbox -y
apt install libreoffice -y
apt install geogebra -y
apt install p7zip -y
apt install filezilla -y
apt install chromium -y
apt install steam -y
apt install vlc -y
apt install audacity -y
apt install clamav -y
apt install notepadqq -y
apt install gimp -y
apt install htop -y
apt install wine -y
apt install fast -y
apt install putty -y
apt install obs-studio -y
apt install vim -y
apt install sublimetext -y
apt install krita -y
apt install bottles -y
apt install mediawriter -y

sleep 5

clear

echo "In the second part of the software installation all Flatpak programs (7) will be installed!"

flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.microsoft.Teams -y
flatpak install flathub com.visualstudio.code -y
flatpak install flathub com.unity.UnityHub -y
flatpak install flathub com.nextcloud.desktopclient.nextcloud -y
flatpak install flathub com.getmailspring.Mailspring -y

sleep 5

clear





echo "Congratulations, the installation was successful! Now your Linux system is ready. Good luck!"

echo "Your Linux system will reboot in 10 seconds!"

echo "10"
echo "9"
echo "8"
echo "7"
echo "6"
echo "5"
echo "4"
echo "3"
echo "2"
echo "1"

echo "Your Linux system will now be rebooted!"

echo "reboot..."

reboot

exit 0