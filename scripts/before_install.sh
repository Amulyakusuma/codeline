#!/bin/bash

#_Change_Working_Directory
cd /home/ubuntu/

#_Update_&_Set_Node_Version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
chmod +x ~/.nvm/nvm.sh
source ~/.bashrc 

#_Download_Node_&NPM
nvm install 16

#_Download_PM2
npm install pm2@latest -g

#create our working directory if it doesnt exist
DIR="/home/ubuntu/server"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi
