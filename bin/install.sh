#!/usr/bin/env bash

set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   ## set -u : exit the script if you try to use an uninitialised variable
set -o errexit   ## set -e : exit the script if any statement returns a non-true return value

export DEBIAN_FRONTEND="noninteractive"

#############################
# Install packages
#############################

add-apt-repository ppa:ondrej/php5-5.6

apt-get update

apt-get install -y \
    supervisor \
    ssmtp \
    php5-cli \
    php5-fpm \
    php5-json \
    php5-intl \
    php5-curl \
    php5-mysqlnd \
    php5-xhprof \
    php5-memcached \
    php5-redis \
    php5-mcrypt \
    php5-gd \
    php5-sqlite \
    php5-xmlrpc \
    php5-xsl \
    php5-geoip \
    php5-ldap \
    php5-xdebug

apt-get install -y \
    graphicsmagick \
    imagemagick \
    zip \
    unzip \
    curl \
    mysql-client \
    nodejs \
    nodejs-legacy \
    node-less \
    npm \
    pv

apt-get upgrade -y

#############################
# Install tools
#############################

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

#############################
# Cleanup
#############################

apt-get clean -y
apt-get autoclean -y
