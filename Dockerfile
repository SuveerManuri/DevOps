FROM centos:latest
LABEL maintainer="suveermanuri"
RUN yum install -y httpd \
zip\
unzip
ADD https://github.com/SuveerManuri/carweb.git /var/www/html/
WORKDIR /var/www/html/
RUN unzip carwebsite.zip
RUN cp -rvf carwebsite/* .
RUN rm -rf carwebsite carwebsite.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22