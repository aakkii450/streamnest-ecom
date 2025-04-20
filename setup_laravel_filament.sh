#!/bin/bash

# Set project name
PROJECT_NAME="streamnest-ecom"

# Step 1: Create Laravel Project
composer create-project laravel/laravel $PROJECT_NAME

# Step 2: Change Directory
cd $PROJECT_NAME || exit

# Step 3: Install Filament Admin Panel
composer require filament/filament

# Step 4: Set up authentication scaffolding
php artisan make:auth

# Step 5: Publish Filament Assets
php artisan vendor:publish --tag=filament-config

# Step 6: Run migrations
php artisan migrate

# Step 7: Create Admin User Seeder
php artisan make:filament-user

echo "Laravel + Filament Admin Panel is ready!"
echo "Next step: Set up your database in .env and run 'php artisan migrate' manually if needed."
