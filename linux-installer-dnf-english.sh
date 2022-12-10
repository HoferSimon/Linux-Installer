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

dnf upgrade -y

sleep 5

clear

echo "Now the most used applications will be installed!"

sleep 5

clear

echo "Firsty we must install the needed packages"

sudo dnf install \
    https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install \
    https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sleep 5

clear

echo "In the first part of the software installation, all dnf programmes (22) will be installed!"

dnf install virtualbox -y
dnf install libreoffice -y
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
dnf install krita -y
dnf install bottles -y
dnf install mediawriter -y
dnf install conky -y
dnf install dnfdragora -y


sleep 5

clear

echo "In the second part of the software installation, all Flatpak programmes (7) will be installed!"

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.microsoft.Teams -y
flatpak install flathub com.visualstudio.code -y
flatpak install flathub com.unity.UnityHub -y
flatpak install flathub com.nextcloud.desktopclient.nextcloud -y
flatpak install flathub com.getmailspring.Mailspring -y
flatpak install flathub org.blender.Blender -y
flatpak install flathub com.bitwarden.desktop -y
flatpak install flathub com.github.tchx84.Flatseal -y
flatpak install flathub com.nextcloud.desktopclient.nextcloud -y

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
