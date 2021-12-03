# PHP based development environment dev-www

## What is this image intended for?

This image is for all php developers who want a basic development environment setup.

It is out of the box usable on linux hosts with a docker engine version >= 1.3

Includes your app path at a nginx and _php-fpm_ basic setup and provides any special developing features as:

* xdebug
* phpinfo

Concerning building your PHP app there are availabel [composer][1] as package manager and [phing][2] as build tool.  

## How apply the image?

Download and go to the folder building the images as e.g.

    docker build --tag dev-www:latest .

Run the image and include your developing php app folder 

    docker run --name dev-www -d -v /path/to/my/project:/app -p 127.0.0.1:80:80 dev-www:latest .

A container named _dev-www_ will started mounting your php app at port 80. Call ```http://127.0.0.1/``` at your browser to verify the runtime environment.

## How to debug?

By default php is configured up to start a debugging session indicated by request parameters. Therefore, it exists a 
couple of handy browser-addons (e.g. [xdebug-helper for chrome][1]). Please note! The IDE should be configured additionally to accept 
started debugging sessions by remote.

## PHPINFO

Look at the PHP-configuration at ```http://127.0.0.1/phpinfo```

## Run an interactive console in the container

There is the possibility to use bash and a few of common used terminal commands for example ```less```, ```vi``` and so on.  

    docker exec -ti dev-www /bin/bash

## Advanced configuration

Following environment variables can be set when creating (run) a new container.

_The values given here are the default values._

* `APP_HOME=/app`<br/>
  defines the application folder, normally where your application resides. there are some rare cases where strange software needs to
  be configured to reside in a special place
* `APP_USER=dev`<br/>
  defines the user running the app
* `TIME_ZONE=Europe/Berlin`
  defines the timezone php is working in
* `SMTP_HOST`<br />
  defines the smtp host that takes mails sent by php. if none is provided the php default values take place
* `SMTP_NAME=www-dev`<br />
  defines the host name as which the container sents his emails
* `SMTP_PORT=25`<br />
  defines the port on which the container trys to connect to the smtp host

## Release management

Releases are orientated on PHP version of based Alpine PHP-FPM image as for example _php:7.4-fpm-alpine_. 

At https://git.sc.uni-leipzig.de exists a Gitlab CI-pipeline building an image and publishing it to a registry.

A release tag is necessary to publish an image to [ubleipzig/dev-www][4] Release tags have to be the schema of _release/*_ and to start with prefixed terminus _release_.

For example if you would push a new tag named release/7.4-0 following set of new images will be created:

- 7.4-0
- 7.4
- 7
- latest


[1]: https://getcomposer.org/
[2]: http://www.phing.info/
[3]: https://github.com/mac-cain13/xdebug-helper-for-chrom
[4]: https://hub.docker.com/r/ubleipzig/dev-dotdeb




