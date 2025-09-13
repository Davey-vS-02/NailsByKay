# ------------------------------
# Laravel + PHP-FPM + Nginx (Production) for Render
# ------------------------------

# 1️⃣ Base image
FROM php:8.2-fpm

# 2️⃣ Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libpq-dev \
    npm \
    zip \
    nginx \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 3️⃣ Install PHP extensions
RUN docker-php-ext-install pdo pdo_pgsql mbstring exif pcntl bcmath gd

# 4️⃣ Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# 5️⃣ Set working directory
WORKDIR /var/www/html

# 6️⃣ Copy project files
COPY . .

# 7️⃣ Install PHP dependencies
RUN composer install --optimize-autoloader --no-dev

# 9️⃣ Build Vite assets
RUN npm install && npm run build

# 🔟 Copy Nginx config
COPY ./docker/nginx/default.conf /etc/nginx/conf.d/default.conf

# 1️⃣1️⃣ Set permissions
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# 1️⃣2️⃣ Expose port 10000
EXPOSE 10000

# 1️⃣3️⃣ Start PHP-FPM + Nginx (Nginx in foreground)
RUN echo "listen = 127.0.0.1:9000" > /usr/local/etc/php-fpm.d/zz-docker.conf
CMD php artisan migrate --force \
    && php artisan config:clear \
    && php artisan cache:clear \
    && php artisan route:clear \
    && php artisan view:clear \
    && /usr/sbin/nginx -g "daemon off;" & php-fpm -F
