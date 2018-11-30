#!/bin/bash
cd "$(dirname "$0")"
npm update;
node distribution.js
jsonlint -i distribution.json
cp -rf distribution.json ../WA-Launcher/app/assets/.