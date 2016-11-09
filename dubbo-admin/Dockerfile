FROM java:7u79-jre
WORKDIR /opt/
COPY run.sh /run.sh
RUN chmod +x /run.sh
RUN wget -q -O zookeeper.tar.gz http://mirrors.aliyuncs.com/apache/zookeeper/zookeeper-3.4.7/zookeeper-3.4.7.tar.gz
RUN tar zxvf zookeeper.tar.gz
RUN wget -q -O tomcat.tar.gz http://mirrors.aliyuncs.com/apache/tomcat/tomcat-8/v8.0.29/bin/apache-tomcat-8.0.29.tar.gz
RUN tar zxvf tomcat.tar.gz
COPY tomcat-users.xml apache-tomcat-8.0.29/conf/
#RUN rm -rf apache-tomcat-8.0.29/webapps/*
RUN cp zookeeper-3.4.7/conf/zoo_sample.cfg zookeeper-3.4.7/conf/zoo.cfg
ENTRYPOINT ["sh","/run.sh"]
CMD ./apache-tomcat-8.0.29/bin/catalina.sh start


