FROM dunglas/frankenphp:latest

# Install dependencies and Composer
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && apt-get clean

WORKDIR /app/public
