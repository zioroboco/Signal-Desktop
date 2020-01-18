#!/bin/bash
set -e

yarn install --frozen-lockfile
yarn generate
yarn build:webpack

SIGNAL_ENV=production yarn build
