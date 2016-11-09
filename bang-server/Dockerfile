FROM tomcat:7.0.67-jre7
RUN echo "Asia/Shanghai" > /etc/timezone
RUN echo "deploy bang test">/test.txt
WORKDIR /usr/local/tomcat/
RUN rm -rf webapps/*
COPY tomcat-users.xml conf/tomcat-users.xml
COPY server.xml conf/server.xml
COPY context.xml conf/context.xml
#RUN rm -rf webapps/*
RUN wget -q -O webapps/bang.war http://192.168.42.5/bang.war
RUN wget -q -O webapps/bang-pay.war http://192.168.42.5/bang-pay.war
RUN wget -q -O lib/commons-pool2-2.2.jar http://192.168.42.5/commons-pool2-2.2.jar && wget -q -O lib/jedis-2.5.2.jar http://192.168.42.5/jedis-2.5.2.jar && wget -q -O lib/tomcat-redis-session-manage-tomcat7.jar http://192.168.42.5/tomcat-redis-session-manage-tomcat7.jar
#RUN wget -q -O lib/commons-jci-fam-1.0.jar http://192.168.42.12/commons-jci-fam-1.0.jar
#COPY run.sh /run.sh
#RUN chmod +x /run.sh
#ENTRYPOINT ["sh","bin/catalina.sh","start"]
#CMD ["/run.sh"]
