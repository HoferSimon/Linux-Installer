#!/bin/bash

echo "Welcome to the Linux Installer!"
echo "-----------By SimSon-----------"

sleep 5

clear

echo "With this installer you can install the most used applications in minutes!"

sleep 5

echo "During the fully automatic installation, they can grab a coffee!"

sleep 5

clear





echo "The first thing we do is to update your system so that all packages are up to date!"

dnf upgrade -y





echo "Now important repositories & the 32 bit Archicture will be installed!"

sleep 5

dnf config-manager --add-repo universe

dnf config-manager --add-repo multiverse

dpkg -add archicture -i386 -y

dnf upgrade -y

clear





echo "Now the most used applications are installed!"

sleep 5

clear

echo "In the first part of the software installation all dnf programs (22) will be installed!"

dnf install virtualbox -y
dnf install libreoffice -y
dnf install geogebra -y
dnf install p7zip -y
dnf install filezilla -y
dnf install chromium -y
dnf install steam -y
dnf install vlc -y
dnf install audacity -y
dnf install clamav -y
dnf install notepadqq -y
dnf install gimp -y
dnf install htop -y
dnf install wine -y
dnf install fast -y
dnf install putty -y
dnf install obs-studio -y
dnf install vim -y
dnf install sublimetext -y
dnf install krita -y
dnf install bottles -y
dnf install mediawriter -y

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

echo "Ihr Linux System wird in 10 Sekunden neugestartet!"

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
