#!/bin/sh
set -ex
export PYTHON=/usr/bin/python2

node --version; npm --version
# Install npm package with C extension as local package dependency
mkdir nodejs-module-stream-switch-test-package && cd $_
npm init --yes  # auto-fills package metadata
npm install nodegit --build-from-source
npm list        # lists all locally installed packages
