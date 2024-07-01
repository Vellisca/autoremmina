#!/bin/bash

# Pedir el nombre de usuario
read -p "Introduce tu nombre de usuario: " USER

# Pedir la contraseña (la entrada no será visible)
read -s -p "Introduce tu contraseña: " PASSWORD
echo

# Configurar el dominio y el servidor
DOMAIN="durum.es"
SERVER="lt$USER"

# Ejecutar remmina con los parámetros de conexión
remmina -c "rdp://$DOMAIN\\$USER:$PASSWORD@$SERVER"
