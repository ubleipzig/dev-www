# Changelog

## [7.4-1](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/commits/release/7.4-1)

Compare [Full Changelog](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/compare/release%2F7.4-0...release%2F7.4-1)

### Implementations
* consolidates xdebug configuration at _/usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini_

## [7.4-0](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/commits/release/7.4-0)

### Implementations
* adds _php:7.4-fpm-alpine_ as base image for www-dev environment
* adds nginx
* implements php dependencies as curl, gd, intl, mbstring, xdebug, zip
* adds _composer_ v2 and _phing_ as build tool
* installs _mhsendmail_ as development mailer