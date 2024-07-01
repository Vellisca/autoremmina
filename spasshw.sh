#!/bin/bash

read -p "Introduce tu nombre de usuario: " USER
read -s -p "Introduce tu contraseña: " PASSWORD
echo

DOMAIN="durum.es"
SERVER="lt$USER"

# Ejecutar remmina con los parámetros de conexión
remmina -c "rdp://$DOMAIN\\$USER:$PASSWORD@$SERVER"
