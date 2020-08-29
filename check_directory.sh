#!/bin/bash
cd /home
for DIR in *
do
	CHK=$(grep -c "/home/$DIR" /etc/passwd)
	if [ $CHK -gt 0 ]
	then 
	echo $DIR is assinged to a user
	else
	echo $DIR is not assigned to a user
	fi
done

