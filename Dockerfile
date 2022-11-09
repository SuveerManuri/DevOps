FROM centos:latest
MAINTAINER suveermanuri
RUN yum install -y \
zip\
unzip
ADD https://www.free-css.com/free-css-templates/page284/pet-shop.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22