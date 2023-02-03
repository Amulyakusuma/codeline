#!/bin/bash

#_Change_Working_Directory
cd /var/www/html/paysikka

#_Delete_Old_PM2_Service

#sudo pm2 start server.js --name
pm2 start app.js --watch
