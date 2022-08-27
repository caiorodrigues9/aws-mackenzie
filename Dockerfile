FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update 
RUN apt-get install apache2 -y

COPY index.html /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
