#!/bin/bash

if [ -f $HOME/.scripts/dates/`TZ=UTC+8 date +"%Y%m%d"` ]
then
	echo 0 2&>/dev/null
else
	touch $HOME/.scripts/dates/`TZ=UTC+8 date +"%Y%m%d" `
	#echo -e "$(tput setaf 1)$(tput setab 0)<SYSTEM>:"
	#echo "<SYSTEM>:"
	echo "Also, please run pacman -Syu"
fi
