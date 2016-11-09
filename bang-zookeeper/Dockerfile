FROM java:zookeeper
RUN rm -rf /opt/apache-tomcat-8.0.29/webapps/* && wget -q -O /opt/apache-tomcat-8.0.29/webapps/ROOT.war http://192.168.42.5/dubbo-admin-2.5.3.war
COPY zoo.cfg /opt/zookeeper-3.4.7/conf/zoo.cfg
COPY run.sh /run.sh
RUN chmod +x /run.sh
WORKDIR /
CMD ./run.sh

