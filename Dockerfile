FROM ubuntu 
RUN apt update 
RUN apt install apache2 -y
RUN apt install apache2-utils -y
RUN apt clean
RUN apt-get install unzip -y
WORKDIR /var/www/html/ 
RUN echo 'Hello, docker' > /var/www/index.html
EXPOSE 80 22
CMD [“apache2ctl”, “-D”, “FOREGROUND”]