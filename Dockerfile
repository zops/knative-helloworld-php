# Use the official PHP 7.2 image.
# https://hub.docker.com/_/php
FROM layershop.dangdang.com/cnlab/php:7.2-apache

# Copy local code to the container image.
COPY index.php /var/www/html/

# Use the PORT environment variable in Apache configuration files.
#RUN sed -i 's/80/${PORT}/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf
RUN sed -i 's/80/8080/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf

# Configure PHP for development.
# Switch to the production php.ini for production operations.
# RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
# https://hub.docker.com/_/php#configuration
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
