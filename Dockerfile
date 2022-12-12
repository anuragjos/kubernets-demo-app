FROM centos
ADD https://github.com/just-containers/s6-overlay/releases/download/v1.17.1.1/s6-overlay-amd64.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C /
RUN apt-get update
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum -y install java
CMD /bin/bash
RUN dnf -y install httpd
RUN yum install gzip -y
RUN zip/
RUN unzip/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page286/consult.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip consult.zip
RUN cp -rvf consult.zip
RUN rm -rf consult consult.zip
EXPOSE 80 22
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]