FROM alpine:3.1
RUN apk add --update mysql-client && rm -rf /var/cache/apk/*
ENTRYPOINT ["mysql"]
