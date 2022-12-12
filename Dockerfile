FROM centos
RUN dnf -y install httpd
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