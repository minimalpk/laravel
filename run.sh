# Run docker compose
docker-compose up --detach --build

# Copy application configuration
docker-compose run app cp -v .env.example .env

# Install application dependencies
docker-compose run app composer install

# Generate application key
docker-compose run app php artisan key:generate