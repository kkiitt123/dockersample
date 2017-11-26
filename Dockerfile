FROM centos:latest
MAINTAINER 0.1 g09030@shibaura-it.ac.jp
RUN ["yum","-y","install","httpd"]

ADD httpd.conf /etc/httpd/
ONBUILD ADD website.tar /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
