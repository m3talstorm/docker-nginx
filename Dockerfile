FROM alpine:3.6

MAINTAINER Stuart Bannerman <https://github.com/m3talstorm>

RUN apk --no-cache add nginx

RUN rm -rf /etc/nginx/*
RUN rm -rf /usr/share/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

COPY nginx.conf /etc/nginx/nginx.conf
