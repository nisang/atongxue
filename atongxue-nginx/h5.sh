#!/bin/bash
mkdir -p /usr/share/nginx/html/h5
cd /usr/share/nginx/html/h5
rm -rf *
wget http://192.168.42.5/trunk.zip
unzip -o trunk.zip
rm -rf trunk.zip
cp Astudent/views/static/*.html .
cp Astudent/views/*.html .
cp Astudent/views/activity/*.html .
cp Astudent/views/bottle/*.html .
cp Astudent/views/errow/*.html .
cp Astudent/views/graffiti/*.html .
