#!/bin/bash
cd "$(dirname "$0")"
cd /var/resist/resist-mod-pack;
/var/resist/resist-mod-pack/pull.sh;
npm update http-server -g;
http-server -p 9090 /var/resist/resist-mod-pack;

