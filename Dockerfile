FROM ubuntu 
RUN apt update 
RUN apt install apache2 -y
RUN apt install apache2-utils -y
RUN apt clean
RUN apt-get install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page286/consult.zip /var/www/html/
WORKDIR /var/www/html/ 
RUN unzip consult.zip
RUN cp -rvf consult.zip
RUN rm -rf consult consult.zip
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]