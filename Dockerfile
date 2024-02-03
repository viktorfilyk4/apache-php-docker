FROM ubuntu:latest

# This arg chooses default answers during packages install
ARG DEBIAN_FRONTEND=noninteractive

# Install required packages for Apache server and PHP
# `-y` flag means to choose `yes` during packages install
RUN apt update
RUN apt install -y apache2
RUN apt install -y apache2-utils
RUN apt install -y php libapache2-mod-php
RUN apt clean

# Expose port 80 to map container from outside
EXPOSE 80

# Copy files from local `www` directory to container `var/www/html` directory
ADD www var/www/html 

CMD ["apache2ctl", "-D", "FOREGROUND"]
