#!/bin/sh
set -ex

. script/install-deps-root.sh

# Install node package manager and nodegit build dependencies
yum -y install gcc-c++ npm krb5-devel python2

node --version; npm --version
