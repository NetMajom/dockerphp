FROM phpstorm/php-73-apache-xdebug-27
RUN apt-get update && apt-get upgrade -y
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
COPY ./php.ini /usr/local/etc/php
EXPOSE 80
