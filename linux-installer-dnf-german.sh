#!/bin/bash



if ! [[ $EUID != 0 ]];
then
    echo "Bevor der Installer starten kann der start-check durchgeführt werden. Im Test wird getestet ob sie Root sind & ob sie mit den Internet verbunden sind."
    
    sleep 5

    clear
    
    echo "Root?"

    sleep 3
    
    echo "Check!"

    sleep 3

    clear

else

echo "Du must Root sein um, dieses Script ausführen zu können."

    sleep 5

exit

fi

if ping -c 1 1.1.1.1 >/dev/null; then
    echo "Internet?"

    sleep 3

    echo "Check!"

    sleep 3

    clear

    echo "Der start-check vom Installer war erfolgreich. Der Installer wird nun gestartet!"

else

    echo "Sie haben keine Internetverbindung."

    leep 5

exit

fi



echo "Willkommen beim Linux Installer!"
echo "-----------By SimSon-----------"

sleep 3

clear

echo "Mit diesem Installer installieren sie die meist genutzten Programme in wenigen Minuten!"

sleep 5

clear

echo "Dies ist eine vollautomatischen Installation, desswegen...holen sie sich einen Kaffee holen!"

sleep 5

clear



echo "Als alles erstes Updaten wir ihren System, sodass alle Packete auf den neusten Stand sind!"

dnf upgrade -y

sleep 5

clear

echo "Nun werden die meist genutzten Anwendungen installiert!"

sleep 5

clear

echo "Im ersten Teil der Software-Installation werden alle dnf Programme (22) installiert!"

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
dnf install krita -y
dnf install bottles -y
dnf install mediawriter -y

sleep 5

clear

echo "Im zweiten Teil der Software-Installation werden alle Flatpak Programme (7) installiert!"

flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.microsoft.Teams -y
flatpak install flathub com.visualstudio.code -y
flatpak install flathub com.unity.UnityHub -y
flatpak install flathub com.nextcloud.desktopclient.nextcloud -y
flatpak install flathub com.getmailspring.Mailspring -y

sleep 5

clear



echo "Glückwunsch, die Installation war erfolgreich! Nun ist ihr Linux System bereit. Viel Spaß!"

sleep 5

clear

echo "Ihr Linux System wird in 10 Sekunden neugestartet!"

echo "Wenn sie keinen neustart durchführen mochten drucken sie 'STRG+C'"

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



echo "Ihr Linux System wird nun neugestartet!"

echo "Reboot..."

reboot

exit 0
