FROM php:8.2-cli

# Install required PHP extensions for MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Set working directory and copy application source
WORKDIR /var/www/html
COPY . /var/www/html/

# Ensure media upload directories exist and are writable
RUN mkdir -p studentUploads teacherUploads adminUploads noticeUploads \
    && chmod -R 777 studentUploads teacherUploads adminUploads noticeUploads

# Default PORT fallback if running standalone
ENV PORT=80

EXPOSE 80

# Run PHP built-in web server binding to Railway's dynamic $PORT
CMD ["sh", "-c", "php -S 0.0.0.0:${PORT:-80} -t /var/www/html"]
