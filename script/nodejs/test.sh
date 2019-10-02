#!/bin/bash -ex

node -v; npm -v

cd nodejs-module-stream-switch-test-package && npm list

# Trigger linking issue, then rebuild and test that works
node -e 'require("nodegit");' || :
npm rebuild --build-from-source
node -e 'require("nodegit");'
