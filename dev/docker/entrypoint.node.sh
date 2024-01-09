#!/bin/sh

set -e

chown -R node:node /app


npm install --unsafe-perm
npm rebuild node-sass

SHELL=/bin/sh exec npm run watch
