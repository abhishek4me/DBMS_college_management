FROM php:8.2-apache

# Install required PHP extensions for MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory and copy application source
WORKDIR /var/www/html
COPY . /var/www/html/

# Copy and prepare entrypoint script
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Ensure upload directories exist and have proper permissions
RUN mkdir -p studentUploads teacherUploads adminUploads noticeUploads \
    && chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html \
    && chmod -R 777 studentUploads teacherUploads adminUploads noticeUploads

ENV PORT=80

EXPOSE 80

ENTRYPOINT ["docker-entrypoint.sh"]
