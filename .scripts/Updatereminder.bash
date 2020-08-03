#!/bin/bash

if [ -f /home/earth/.scripts/dates/`TZ=UTC+8 date +"%Y%m%d"` ]
then
	echo 0 2&>/dev/null
else
	touch /home/earth/.scripts/dates/`TZ=UTC+8 date +"%Y%m%d" `
	#echo -e "$(tput setaf 1)$(tput setab 0)<SYSTEM>:"
	echo "<SYSTEM>:"
	echo "please run pacman -Syu"
fi
