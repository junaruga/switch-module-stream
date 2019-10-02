#!/bin/sh
set -ex

. script/install-deps-root.sh

# Install node package manager and nodegit build dependencies
yum -y install npm node-gyp python krb5-devel

node --version; npm --version
