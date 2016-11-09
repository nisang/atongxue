#!/bin/sh

chmod +x /opt/ext/ext/bin/run.sh
chmod +x /opt/ext/ext/lib/*.jar
chmod +x /opt/ext/banglibrary/*.jar

chmod +x /opt/push/bin/run.sh
chmod +x /opt/push/lib/*.jar

chmod +x /opt/qiniu/bin/run.sh
chmod +x /opt/qiniu/lib/*.jar
cd /opt/push/bin
sh /opt/push/bin/run.sh &
cd /opt/ext/ext/bin
sh /opt/ext/ext/bin/run.sh &
cd /opt/qiniu/bin
sh /opt/qiniu/bin/run.sh &
