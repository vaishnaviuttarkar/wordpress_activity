# Use the official Ubuntu image as the base image
FROM ubuntu:latest

# Update the package repository and install Apache2, PHP, and necessary PHP extensions
RUN apt-get update && apt-get install -y \
    apache2 \
    php \
    php-mysql \
    libapache2-mod-php \
    wget \
    unzip

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set the working directory
WORKDIR /var/www/html

# Download and unzip WordPress
RUN wget https://wordpress.org/latest.zip && \
    unzip latest.zip && \
    rm latest.zip && \
    mv wordpress/* . && \
    rmdir wordpress

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
