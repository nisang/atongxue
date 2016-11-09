FROM nginx:latest
#COPY pc-atongxue.sh /opt/pc-atongxue.sh
COPY atongxue.conf /etc/nginx/conf.d/atongxue.conf
#COPY atongxue-a.conf /etc/nginx/conf.d/atongxue-a.conf
COPY mobile.conf /etc/nginx/conf.d/mobile.conf
COPY hehuo.conf /etc/nginx/conf.d/hehuo.conf
COPY weixin.conf /etc/nginx/conf.d/weixin.conf
COPY h5.sh /opt/h5.sh
COPY pc.sh /opt/pc.sh
RUN chmod +x /opt/*.sh
COPY sources.list /etc/apt/sources.list
#RUN apt-get update && apt-get install -y wget unzip
