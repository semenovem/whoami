#!/bin/bash

BIN=$(dirname "$([[ $0 == /* ]] && echo "$0" || echo "$PWD/${0#./}")")

grep -v "скачать в PDF" "${BIN}/README.md" |
  node_modules/md-to-pdf/dist/cli.js \
    --stylesheet css/style.css \
    --pdf-options '{ "format": "Letter", "margin": "10mm", "printBackground": true }' \
    >resume.pdf
