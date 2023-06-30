#!/bin/bash

# Defina as permissões corretas para a pasta do MySQL
chmod -R 777 /var/lib/mysql

# Execute o entrypoint padrão do MySQL
/entrypoint.sh "$@"