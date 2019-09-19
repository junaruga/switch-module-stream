#!/bin/bash -ex

# Run common script.
script/install-deps-root.sh

# Install RPM package dependencies for the installed gem packages.
yum -y install \
  ruby-devel \
  rubygem-rdoc

# Install RPM packages that can depend on one of current or new stream.
yum -y install ruby-hivex ruby-libguestfs || true

# Install gem packages with C extention by root user.
ruby -v
gem -v
gem install bindex -v 0.8.1

exit 0
