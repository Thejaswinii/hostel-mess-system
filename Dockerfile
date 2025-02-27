# Use the official PHP image with Apache
FROM php:8.1-apache

# Enable Apache mod_rewrite if you need URL rewriting
RUN a2enmod rewrite

# Copy your application code to the container’s web root
COPY . /var/www/html/

# Set appropriate permissions
RUN chown -R www-data:www-data /var/www/html/

# Expose port 80
EXPOSE 80
