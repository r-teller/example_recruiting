FROM nginx
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install --no-upgrade curl vim -y
RUN apt-get clean

RUN mkdir  -p /var/www/html

COPY /html/ /var/www/html
COPY /nginx/nginx-west.conf /etc/nginx/nginx.conf
