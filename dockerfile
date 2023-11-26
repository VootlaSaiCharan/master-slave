FROM ubuntu:latest
LABEL project="final-project"
LABEL author="charan"

RUN apt update
RUN apt install apache2 -y

ENV debian_frontend=non-interactive

CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]

EXPOSE 80

WORKDIR /var/www/html/
VOLUME /var/apache/log/

ADD final.tar.gz /var/www/html
