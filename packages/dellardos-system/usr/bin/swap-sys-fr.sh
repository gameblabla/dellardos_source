#!/bin/bash
sudo rm /etc/jwm/system.jwmrc && 
sudo ln -s /etc/jwm/system_fr.jwmrc /etc/jwm/system.jwmrc && 

sudo update-locale LANG=fr_FR.UTF-8 LC_MESSAGES=POSIX LANGUAGE=fr_FR.UTF-8 LC_ALL=fr_FR.UTF-8
gxmessage "Deconnectez-vous et reconnectez vous !" -timeout 5
