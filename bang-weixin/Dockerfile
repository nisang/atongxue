FROM tomcat:7.0.67-jre7
RUN mkdir -p /logs
RUN echo "Asia/Shanghai" > /etc/timezone
ENV TransferServer 192.168.42.5
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
WORKDIR /usr/local/tomcat/webapps
RUN rm -rf *
RUN wget -q http://$TransferServer/bangweixin.war
RUN mv bangweixin.war ROOT.war
WORKDIR /usr/local/tomcat
