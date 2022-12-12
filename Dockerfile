FROM centos:latest
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN dnf -y install httpd
ADD https://www.free-css.com/assets/files/free-css-templates/download/page286/consult.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip consult.zip
RUN cp -rvf consult.zip
RUN rm -rf consult consult.zip
EXPOSE 80 22
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]