#!/bin/bash



if ! [[ $EUID != 0 ]];
then
    echo "Before the installer can be started, the start-check must be completed. The test checks whether you are root and whether you are connected to the Internet."
    
    sleep 5

    clear
    
    echo "Root?"

    sleep 3
    
    echo "Check!"

    sleep 3

    clear

else

echo "You must be root to run this script."

    sleep 5

exit

fi

if ping -c 1 1.1.1.1 >/dev/null; then
    echo "Internet?"

    sleep 3

    echo "Check!"

    sleep 3

    clear

    echo "The start check of the installer was successful. The installer will now start!"

else

    echo "You do not have an internet connection."

    leep 5

exit

fi



echo "Welcome to the Linux Installer!"
echo "-----------By SimSon-----------"

sleep 3

clear

echo "With this installer, you can install the most frequently used programmes in just a few minutes!"

sleep 5

clear

echo "This is a fully automatic installation, so...get yourself a coffee!"

sleep 5

clear



echo "The first thing we do is update your system so that all packages are up to date!"

apt update -y
sudo apt install flatpak
sleep 5

clear

echo "Now the most used applications are installed!"

sleep 5

clear

echo "In the first part of the software installation, all apt programmes (19) will be installed!"

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
apt install krita -y
apt install bottles -y

sleep 5

clear

echo "In the second part of the software installation, all Flatpak programmes (7) will be installed!"

apt install flatpak
apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.microsoft.Teams -y
flatpak install flathub com.visualstudio.code -y
flatpak install flathub com.unity.UnityHub -y
flatpak install flathub com.nextcloud.desktopclient.nextcloud -y
flatpak install flathub com.getmailspring.Mailspring -y

sleep 5

clear



echo "Congratulations, the installation was successful! Now your Linux system is ready. Have fun!"

sleep 5

clear

echo "Your Linux system will reboot in 10 seconds!"

echo "If you do not want to reboot, press 'CTRL+C'."

echo "10"

sleep 1

echo "9"

sleep 1

echo "8"

sleep 1

echo "7"

sleep 1

echo "6"

sleep 1

echo "5"

sleep 1

echo "4"

sleep 1

echo "3"

sleep 1

echo "2"

sleep 1

echo "1"

sleep 1



echo "Your Linux system will now restart!"

echo "Reboot..."

reboot

exit 0
