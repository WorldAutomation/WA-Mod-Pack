#!/bin/bash
cd "$(dirname "$0")"
cd ~/WA-Mod-Pack;
./pull.sh;
npm install http-server -g;
http-server -p 9090 .;

