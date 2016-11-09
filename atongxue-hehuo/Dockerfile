FROM tomcat:7.0.67-jre7
RUN echo "Asia/Shanghai" > /etc/timezone
RUN echo "test deploy"> /desc.txt
WORKDIR /usr/local/tomcat/
RUN rm -rf webapps/*
COPY server.xml conf/server.xml
RUN wget -q -O webapps/bang-pc.war http://192.168.42.5/bang-pc.war 
