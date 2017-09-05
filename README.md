## Docker Nginx PHP7 + FPM on "ubuntu:16.04"

This container includes the basic installation of Nginx with PHP7 + FPM

It can be used as the basis for an installation of a Wordpress, Kanboard, GLPI, or other software that uses Nginx and PHP.

# Usage
``` 
~# docker container run -d -p 80:80 churrops/nginx-php7-fpm 
```

To use the image as a base, simply start your Dockerfile with the following syntax

``` 
FROM churrops/nginx-php7-fpm
...
...
...

``` 

# Wordpress install reference!

https://github.com/vandocouto/Docker-Wordpress.git

