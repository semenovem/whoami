#!/bin/sh


cat README.md | node_modules/md-to-pdf/dist/cli.js --stylesheet	css/style.css --pdf-options '{ "format": "Letter", "margin": "10mm", "printBackground": true }'  > resume.pdf
