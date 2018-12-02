#!/bin/bash
cd "$(dirname "$0")"
git stash
git pull
#Update Mod List on CDN Every Pull
latest=$(wget -qO- https://minecraft.curseforge.com/projects/worldautomation | cat | grep "projects/worldautomation/files/" | awk -F "\"" '{ print $4 }')
curl "https://minecraft.curseforge.com$latest" > curse.html
