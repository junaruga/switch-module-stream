#!/bin/bash -ex

# Install pecl packages by pecl command on PHP 7.2.
# to test pecl packages that have C-extention.
# zip and apcu pecl packages are C-extention.
php -v
pear version
pecl config-get php_dir
pecl config-set php_dir ~/.php

pecl install apcu
pecl install redis
pecl install zip

pecl list
