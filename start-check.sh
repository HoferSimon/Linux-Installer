#!/bin/bash

if ! [[ $EUID != 0 ]];
then
   echo "Du bist Root, die Überprüfung wird fortgeführt..."

else

echo "Du must Root sein um, diesem Script ausführen zu können. Um Root zu werden können Sie: sudo su ;im Terminal schreiben!"

exit

fi

if ping -c 1 8.8.8.8 >/dev/null; then
  echo "Der start-check vom Installer war erfolgreich. Der Installer wird nun gestartet!"
else
  echo "Sie haben keine Internetverbindung. Um den Script für die Installation ausführen zu können, müssen Sie über eine Interentverbindung verfügen!"
fi

exit 0
