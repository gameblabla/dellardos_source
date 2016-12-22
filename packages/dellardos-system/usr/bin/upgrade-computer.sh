#!/bin/bash
if ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null 2>&1; then
	sudo apt-get update && sudo apt-get upgrade -y
	if [ "$LC_ALL" = "fr_FR.UTF-8" ]; then
		gxmessage "DellardOS a été mis à jour !" -center -buttons "OK"
	else
		gxmessage "DellardOS is now up-to-date" -center -buttons "OK"
	fi
else
	gxmessage "Check your internet settings please" -center -buttons "Ok"
	#if [ "$LC_ALL" = "fr_FR.UTF-8" ]; then
	#	gxmessage -file /usr/share/dellardos/text/no_connection-fr.txt -center -buttons "Oui", "Non !"
	#else
	#	gxmessage -file /usr/share/dellardos/text/no_connection.txt -center -buttons "Yes", "No !"
	#fi
	sudo service networking restart
fi
