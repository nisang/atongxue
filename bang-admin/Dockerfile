FROM tomcat:7.0.67-jre7
RUN echo "Asia/Shanghai" > /etc/timezone
ENV TransferServer 192.168.42.5
WORKDIR /usr/local/tomcat/conf
#COPY tomcat-users.xml tomcat-users.xml
WORKDIR /usr/local/tomcat/lib
RUN set -x \
wget -q http://$TransferServer/bang-admin/tomcat-redis-session-manage-tomcat7.jar \
&& wget -q http://$TransferServer/bang-admin/jedis-2.5.2.jar \
&& wget -q http://$TransferServer/bang-admin/fastjson-1.2.5.jar \
&& wget -q http://$TransferServer/bang-admin/jackson-databind-2.3.2.jar \
&& wget -q http://$TransferServer/bang-admin/httpclient-4.2.5.jar \
&& wget -q http://$TransferServer/bang-admin/httpcore-4.2.4.jar \
&& wget -q http://$TransferServer/bang-admin/httpmime-4.2.jar \
&& wget -q http://$TransferServer/bang-admin/jackson-annotations-2.3.2.jar \
&& wget -q http://$TransferServer/bang-admin/jackson-core-2.3.2.jar \
&& wget -q http://$TransferServer/bang-admin/commons-pool2-2.2.jar \
&& wget -q http://$TransferServer/bang-admin/commons-pool-1.5.6.jar \
&& wget -q http://$TransferServer/bang-admin/commons-logging-1.1.3.jar \
&& wget -q http://$TransferServer/bang-admin/commons-jci-fam-1.0.jar \
&& wget -q http://$TransferServer/bang-admin/commons-beanutils-1.8.0.jar
WORKDIR /usr/local/tomcat/webapps
RUN rm -rf *
RUN wget -q http://$TransferServer/bang-admin/bang-manage.war
RUN mv bang-manage.war ROOT.war
WORKDIR /usr/local/tomcat
