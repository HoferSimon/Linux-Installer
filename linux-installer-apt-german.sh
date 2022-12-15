#!/bin/bash



if ! [[ $EUID != 0 ]];
then
    echo "Bevor das Installationsprogramm gestartet werden kann, muss der Start-Check abgeschlossen sein. Der Test prüft, ob Sie als root angemeldet sind und ob Sie eine Internetverbindung haben."
    
    sleep 5

    clear
    
    echo "Root?"

    sleep 3
    
    echo "Check!"

    sleep 3

    clear

else

echo "Sie müssen als root angemeldet sein, um dieses Skript auszuführen zu dürfen."

    sleep 5

exit

fi

if ping -c 1 1.1.1.1 >/dev/null; then
    echo "Internet?"

    sleep 3

    echo "Check!"

    sleep 3

    clear

    echo "Der Startcheck des Installers war erfolgreich. Der Installer wird nun gestartet!"

else

    echo "Sie haben keine Internetverbindung."

    leep 5

exit

fi



echo "Willkommen beim Linux-Installer!"
echo "-----------Von SimSon-----------"

sleep 3

clear

echo "Mit diesem Installationsprogramm können Sie die am häufigsten verwendeten Programme in nur wenigen Minuten installieren!"

sleep 5

clear

echo "Dies ist eine vollautomatische Installation, also... holen Sie sich einen Kaffee!"

sleep 5

clear



echo "Als erstes aktualisieren wir Ihr System, damit alle Pakete auf dem neuesten Stand sind!"

apt update -y
sudo apt install flatpak
sleep 5

clear

echo "Jetzt werden die meistgenutzten Anwendungen installiert!"

sleep 5

clear

echo "Im ersten Teil der Software-Installation werden alle apt-Programme (19) installiert!"

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

echo "Im zweiten Teil der Software-Installation werden alle Flatpak-Programme (7) installiert!"

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



echo "Herzlichen Glückwunsch, die Installation war erfolgreich! Jetzt ist Ihr Linux-System bereit. Viel Spaß!"

sleep 5

clear

echo "Ihr Linux-System wird in 10 Sekunden neu gestartet!"

echo "Wenn Sie keinen Neustart durchführen möchten, drücken Sie 'CTRL+C'."

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



echo "Ihr Linux-System wird nun neu gestartet!"

echo "Neustart..."

reboot

exit 0
