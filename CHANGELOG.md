# Changelog

## [8.2-1](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/commits/release/8.2-1)

### Fixes
* fixes sha256 checksum for composer version 

Compare [Full Changelog](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/compare/release%2F8.2-0...release%2F8.2-1)

## [8.2-0](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/commits/release/8.2-0)

* changes base image to _php:8.2-fpm-alpine3:22_ for www-dev environment
* replaces _libressl-dev_ library with _openssl-dev_ 
* updates _imagick_ library to v3.8.0
* updates _xdebug_ to v3.4.3
* updates _composer_ dependency tool to v2.8.9
* updates _phing_ builder to v2.17.4

Compare [Full Changelog](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/compare/release%2F7.4-5...release%2F8.2-0)

## [7.4-5](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/commits/release/7.4-5)

Compare [Full Changelog](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/compare/release%2F7.4-4...release%2F7.4-5)

### Fixes
* due to compatibility issues of PHP 7.4 versions of xdebug will be fixed at v3.16 and imagick v3.4.4
* base image updated to 7.4-fpm-alpine3.16

## [7.4-4](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/commits/release/7.4-4)

Compare [Full Changelog](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/compare/release%2F7.4-3...release%2F7.4-4)

### Fixes
* adds executions rights to composer file

## [7.4-3](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/commits/release/7.4-3)

Compare [Full Changelog](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/compare/release%2F7.4-2...release%2F7.4-3)

### Fixes
* fixes temporary Composer to version 2.2.7 due to conflicting issues w/ typo3/cms-composer-installers on higher version 

## [7.4-2](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/commits/release/7.4-2)

Compare [Full Changelog](https://git.sc.uni-leipzig.de/ubl/bdd_dev/docker/dev-www/-/compare/release%2F7.4-1...release%2F7.4-2)

### Fixes
* defines parameter _client_body_temp_path_ to _/tmp_ at run/03-nginx server configuration to avoid permissions issue on file uploads

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