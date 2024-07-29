#!/bin/bash

echo "RECUERDA HABILITAR RDP EN EL EQUIPO CORPORATIVO"
read -p "Introduce tu nombre de usuario: " USER
read -s -p "Introduce tu contraseña: " PASSWORD
echo
DOMAIN="gmv.es"
SERVER="lt${USER}.gmv.es"
PASS=$(printf '%s' "$PASSWORD" | od -An -tx1 | tr -d ' \n' | sed 's/\(..\)/%1/g')

remmina -c "rdp://$DOMAIN\\$USER:'${PASS}'@$SERVER"

