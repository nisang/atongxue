FROM nginx:latest
RUN echo "test deploy">/test.txt
RUN mkdir -p /var/log/nginx/log/ && touch /var/log/nginx/log/host.access.log
RUN echo "Asia/Shanghai" > /etc/timezone
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
