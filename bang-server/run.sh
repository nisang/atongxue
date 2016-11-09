#!/bin/sh
cd /usr/local/tomcat/bin
./catalina.sh start &
while true;
do
	echo "I'm sleep one second"
	sleep 1
done
