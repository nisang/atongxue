#!/bin/sh
cd /opt/ext/bin
sh /opt/ext/bin/run.sh &
sleep 1
cd /opt/push/bin
sh /opt/push/bin/run.sh &
sleep 1
cd /opt/qihuan/bin
sh /opt/qihuan/bin/run.sh &
while true;
do
	sleep 1
done
