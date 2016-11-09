#!/bin/bash
cd /usr/share/nginx/html
rm -rf Astudent*
wget http://192.168.42.5/Atongxue.zip
unzip -o Atongxue.zip
mv Astudent/html/app/index/*.html .
