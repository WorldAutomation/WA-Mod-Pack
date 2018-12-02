#!/bin/bash
cd "$(dirname "$0")"
git stash
git pull
latest=$(wget -qO- https://minecraft.curseforge.com/projects/worldautomation | cat | grep "projects/worldautomation/files/" | tail -n1 | awk -F "\"" '{ print $4 }');
curl "https://minecraft.curseforge.com$latest" > curse.html
