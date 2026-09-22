#!/bin/bash
set -e

# 1. Strictly enforce single MPM (prevent AH00534)
rm -f /etc/apache2/mods-enabled/mpm_*
ln -sf /etc/apache2/mods-available/mpm_prefork.load /etc/apache2/mods-enabled/mpm_prefork.load
if [ -f /etc/apache2/mods-available/mpm_prefork.conf ]; then
    ln -sf /etc/apache2/mods-available/mpm_prefork.conf /etc/apache2/mods-enabled/mpm_prefork.conf
fi

# 2. Configure port dynamically from Railway's $PORT environment variable
APP_PORT="${PORT:-80}"
echo "Configuring Apache for port ${APP_PORT}..."
echo "Listen ${APP_PORT}" > /etc/apache2/ports.conf

cat <<EOF > /etc/apache2/sites-available/000-default.conf
<VirtualHost *:${APP_PORT}>
    DocumentRoot /var/www/html
    <Directory /var/www/html>
        AllowOverride All
        Require all granted
    </Directory>
    ErrorLog \${APACHE_LOG_DIR}/error.log
    CustomLog \${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOF

# 3. Remove stale PID file if present
rm -f /var/run/apache2/apache2.pid

# 4. Start Apache
echo "Starting Apache on port ${APP_PORT}..."
exec apache2 -DFOREGROUND
