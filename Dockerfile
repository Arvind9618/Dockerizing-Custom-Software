# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Apache
RUN apt-get update && apt-get install -y apache2

# Copy your application code into the container
COPY ./your_app_directory /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
