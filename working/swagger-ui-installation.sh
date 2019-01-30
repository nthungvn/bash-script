#! /bin/bash

# Install Swagger UI and start as deamon web application

mkdir -p ~/repos-git
cd ~/repos-git

git clone https://github.com/swagger-api/swagger-ui.git

npm install http-server
node_modules/http-server/bin/http-server ~/repos-git/swagger-ui/dist -p 65000

# http://localhost:65000
