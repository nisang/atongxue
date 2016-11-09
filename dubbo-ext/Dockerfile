FROM library/tomcat:7.0.67-jre7
#COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY run.sh /run.sh
RUN chmod +x /run.sh
WORKDIR /opt
RUN wget -q http://192.168.42.96/dubbo-ext.zip
RUN wget -q http://192.168.42.96/qiniu-service.zip
RUN wget -q http://192.168.42.96/bang_push.zip

RUN unzip -q -o dubbo-ext.zip && unzip -q -o qiniu-service.zip && unzip -q -o bang_push.zip
RUN mv bang_push push && mv dubbo-ext ext && mv qiniu-service qiniu 
#RUN chmod +x /opt/push/lib/*.jar && chmod +x /opt/push/lib/run.sh
#RUN chmod +x /opt/ext/ext/lib/*.jar && chmod +x /opt/ext/ext/run.sh
#RUN chmod +x /opt/qiniu/lib/*.jar && chmod +x /opt/qiniu/bin/run.sh
RUN chmod +x /opt/ext/ext/bin/run.sh
RUN chmod +x /opt/ext/ext/lib/*.jar
RUN chmod +x /opt/ext/banglibrary/*.jar

RUN chmod +x /opt/push/bin/run.sh
RUN chmod +x /opt/push/lib/*.jar

RUN chmod +x /opt/qiniu/bin/run.sh
RUN chmod +x /opt/qiniu/lib/*.jar
WORKDIR /opt/ext/ext/bin
ENTRYPOINT ["sh","run.sh"]
CMD ["sh","/run.sh"]
