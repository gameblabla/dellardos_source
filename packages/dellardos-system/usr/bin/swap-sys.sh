#!/bin/bash

sudo rm /etc/jwm/system.jwmrc && 
sudo ln -s /etc/jwm/system_en.jwmrc /etc/jwm/system.jwmrc && 

sudo update-locale LANG=en_US.UTF-8 LC_MESSAGES=POSIX LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8
gxmessage "Log off and Log in !" -timeout 5
