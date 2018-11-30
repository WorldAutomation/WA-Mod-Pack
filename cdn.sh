#!/bin/bash
cd "$(dirname "$0")"
cd ~/WA-Mod-Pack;
./pull.sh;
npm update http-server -g;
http-server -p 9090 .;

