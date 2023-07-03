#!/bin/bash

# Defina as permissões corretas para a pasta do MySQL
chmod -R 777 /var/lib/mysql

# Execute o comando "npm install"
npm install

# Inicie o aplicativo Node.js
nodemon index.js