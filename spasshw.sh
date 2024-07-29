#!/bin/bash

echo "RECUERDA HABILITAR RDP EN EL EQUIPO CORPORATIVO"
read -p "Introduce tu nombre de usuario: " USER
read -s -p "Introduce tu contraseña: " PASSWORD
echo

DOMAIN="gmv.es"
SERVER="lt${USER}.gmv.es"

# Ejecutar remmina con los parámetros de conexión
remmina -c "rdp://$DOMAIN\\$USER:'$PASSWORD'@$SERVER"
