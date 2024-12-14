FROM php:7.4-fpm

RUN docker-php-ext-install mysqli

COPY index.php /var/www/html/

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Konfigurasi Nginx untuk melayani file PHP
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]