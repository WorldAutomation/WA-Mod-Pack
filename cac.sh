#!/bin/bash
cd "$(dirname "$0")"
echo "Starting CAC CDN Setup for WorldAutomation.Net..."
echo ""
apt-get update; apt-get install nginx --yes; 
rm -rf /etc/nginx/sites-enabled/*
ln -s setup/cdn.nginx /etc/nginx/sites-enabled/.
chown -R www-data:www-data /WA-Mod-Pack
service nginx restart
echo "!!!!!!!!!!!!!!!!!!!"
echo "Done!"
echo "!!!!!!!!!!!!!!!!!!!"
echo "Please reboot!"
echo "!!!!!!!!!!!!!!!!!!!"