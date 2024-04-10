#!/bin/bash

ROOT=$(dirname "$(echo "$0" | grep -E "^/" -q && echo "$0" || echo "$PWD/${0#./}")")

grep -v "скачать в PDF" "${ROOT}/README.md" |
  node_modules/md-to-pdf/dist/cli.js \
    --stylesheet css/style.css \
    --pdf-options '{ "format": "Letter", "margin": "10mm", "printBackground": true }' \
    >resume.pdf

grep -v "скачать в PDF" "${ROOT}/detail.md" |
  node_modules/md-to-pdf/dist/cli.js \
    --stylesheet css/style.css \
    --pdf-options '{ "format": "Letter", "margin": "10mm", "printBackground": true }' \
    >detail.pdf
