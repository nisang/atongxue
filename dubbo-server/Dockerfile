FROM index.csphere.cn/microimages/jre:latest
RUN echo "test deploy" > /test.txt
RUN echo "Asia/Shanghai" > /etc/timezone
COPY run.sh /run.sh
RUN chmod +x /run.sh && mkdir /opt
WORKDIR /opt
RUN wget -q http://192.168.42.5/dubbo-ext.zip && wget -q http://192.168.42.5/dubbo-qihuan.zip && wget -q http://192.168.42.5/dubbo-push.zip
RUN unzip -q -o dubbo-ext.zip && unzip -q -o dubbo-qihuan.zip && unzip -q -o dubbo-push.zip
RUN mv dubbo-push push && mv dubbo-ext ext && mv dubbo-qihuan qihuan
RUN chmod +x push/lib/*.jar && chmod +x push/bin/run.sh
RUN chmod +x ext/lib/*.jar && chmod +x ext/bin/run.sh
RUN chmod +x qihuan/lib/*.jar && chmod +x qihuan/bin/run.sh

CMD ["sh","/run.sh"]
