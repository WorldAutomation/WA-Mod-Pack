#!/bin/bash
cd "$(dirname "$0")"
echo "Starting CAC CDN Setup for WorldAutomation.Net..."
echo ""
pvscan && vgextend localhost-vg /dev/sda3 && lvextend -l +100%FREE /dev/localhost-vg/root && resize2fs /dev/localhost-vg/root;
apt-get update; 
apt-get install nginx --yes; 
rm -rf /etc/nginx/sites-enabled/*
rm -rf /etc/nginx/nginx.conf
ln -s /WA-Mod-Pack/setup/nginx.conf /etc/nginx/.
ln -s /WA-Mod-Pack/setup/cdn.nginx /etc/nginx/sites-enabled/.
chown -R www-data:www-data /WA-Mod-Pack
service nginx restart
cat /WA-Mod-Pack/setup/bashrc >> ~/.bashrc
source ~/.bashrc
echo "!!!!!!!!!!!!!!!!!!!"
echo "Done!"
echo "!!!!!!!!!!!!!!!!!!!"
echo "Please reboot!"
echo "!!!!!!!!!!!!!!!!!!!"