#!/bin/bash
cd "$(dirname "$0")"
npm update;
node distribution.js
jsonlint -i distribution.json
cp -rf distribution.json ../WA-Launcher/app/assets/.
cp -rf distribution.json dist/distribution.json
latest=$(wget -qO- https://minecraft.curseforge.com/projects/worldautomation | cat | grep "projects/worldautomation/files/" | awk -F "\"" '{ print $4 }')
curl "https://minecraft.curseforge.com$latest" > curse.html