#!/bin/bash

# uncomment the below to disable the upgrade loop
# git pull
# python2.7 quarantine.py
# exit

while :
do
	echo "Starting python script"
	python2.7 quarantine.py
	# test return code
	if [[ $? -eq 13 ]]; then
		break
	fi
	sleep 60
	# update client code periodically (sorry github, you're my bandwidth provider)
	git pull
done



