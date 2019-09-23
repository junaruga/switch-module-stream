#!/bin/bash -ex

# Run common script.
script/install-deps-root.sh

# Install RPM package dependencies.
yum -y install \
  php-pear \
  php-bcmath

exit 0
