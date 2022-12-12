FROM centos
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum -y install java
CMD /bin/bash
RUN dnf -y install httpd
RUN yum install gzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page286/consult.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip consult.zip
RUN cp -rvf consult.zip
RUN rm -rf consult consult.zip
EXPOSE 80 22
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]