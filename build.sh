#!/bin/bash
set -e

git clean -dfx

yarn install --frozen-lockfile
yarn generate
yarn build:webpack

SIGNAL_ENV=production yarn build
