FROM index.csphere.cn/microimages/jre:latest

COPY run.sh /run.sh
RUN chmod +x /run.sh
RUN mkdir /opt
WORKDIR /opt

RUN wget -q http://192.168.42.96/dubbo-ext.zip
RUN wget -q http://192.168.42.96/qiniu-service.zip
RUN wget -q http://192.168.42.96/bang_push.zip

RUN unzip -q -o dubbo-ext.zip && unzip -q -o qiniu-service.zip && unzip -q -o bang_push.zip
RUN mv bang_push push && mv dubbo-ext ext && mv qiniu-service qiniu

CMD ["sh","/run.sh"]
