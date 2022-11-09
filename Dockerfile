FROM centos:latest
MAINTAINER suveermanuri
RUN yum install httpd -y
RUN yum install zip -y
RUN yum install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page33/neko08.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip neko08.zip
RUN cp -rvf neko08/* .
RUN rm -rf neko08 neko08.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22