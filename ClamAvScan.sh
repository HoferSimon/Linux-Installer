#!/usr/bin/zsh

echo "Updating ClamAv Database..."

sudo freshclam

echo "Scanning..."

clamscan -r  /home

exit 0
