#!/bin/sh

# Config Git
git config branch.main.rebase true

# Copy Git Hooks
cp -R tools/hooks/* .git/hooks/

# Install NPM packages
npm install

# Install NPM packages in exampleSite
pushd exampleSite
npm install
popd
