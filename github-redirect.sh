#!/bin/bash

# this file should be in /etc/cron.hourly

cd /home/kris/dev/home-redirect
sed -e "s/\${IP}/$(curl checkip.amazonaws.com)/" template.html > 404.html
git add 404.html
git commit -m "update ip"
git push