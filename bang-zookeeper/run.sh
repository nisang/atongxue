#!/bin/bash
cd /opt/zookeeper-3.4.7/bin
./zkServer.sh start
cd /opt/apache-tomcat-8.0.29/bin
./catalina.sh start
while true;
do
	echo "I'm sleep one second"
	sleep 1
done
