FROM php:8.2-apache

# Install required PHP extensions for MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Configure Apache port dynamically to support Railway's $PORT environment variable
RUN echo "Listen \${PORT}" > /etc/apache2/ports.conf \
    && echo "<VirtualHost *:\${PORT}>" > /etc/apache2/sites-available/000-default.conf \
    && echo "    DocumentRoot /var/www/html" >> /etc/apache2/sites-available/000-default.conf \
    && echo "    <Directory /var/www/html>" >> /etc/apache2/sites-available/000-default.conf \
    && echo "        AllowOverride All" >> /etc/apache2/sites-available/000-default.conf \
    && echo "        Require all granted" >> /etc/apache2/sites-available/000-default.conf \
    && echo "    </Directory>" >> /etc/apache2/sites-available/000-default.conf \
    && echo "    ErrorLog \${APACHE_LOG_DIR}/error.log" >> /etc/apache2/sites-available/000-default.conf \
    && echo "    CustomLog \${APACHE_LOG_DIR}/access.log combined" >> /etc/apache2/sites-available/000-default.conf \
    && echo "</VirtualHost>" >> /etc/apache2/sites-available/000-default.conf

# Set working directory and copy code
WORKDIR /var/www/html
COPY . /var/www/html/

# Ensure media upload directories exist and have proper permissions
RUN mkdir -p studentUploads teacherUploads adminUploads noticeUploads \
    && chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html \
    && chmod -R 777 studentUploads teacherUploads adminUploads noticeUploads

# Default PORT fallback if running standalone
ENV PORT=80

EXPOSE 80

CMD ["apache2-foreground"]
