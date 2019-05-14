#!/usr/bin/env bash
USER=`whoami`
if [ ${USER}="root" ]; then
	OUTPUT=`cat /etc/*release | grep "ID_LIKE"`
	if [[ $OUTPUT =~ "debian" ]]; then
		echo $OUTPUT
		if [ $1="--install" -o $1="--i" ]; then
			echo "installing section"
		fi
	elif [[ $OUTPUT=~"fedora" ]]; then
		echo "Centos system"
	fi
else
	echo "***SWITCH TO ROOT AND TRY AGAIN***"
fi
