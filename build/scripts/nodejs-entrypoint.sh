#!/bin/bash

# Aguarde o MySQL estar pronto para conexões
until mysqladmin ping -hdb -uroot -proot -s; do
    echo "Aguardando o MySQL estar pronto..."
    sleep 1
done

# Defina as permissões corretas para a pasta do MySQL
chmod -R 777 /var/lib/mysql

# Execute o comando "npm install"
npm install

# Inicie o aplicativo Node.js
nodemon index.js