#!/bin/bash

# Pedir el nombre de usuario
read -p "Introduce tu nombre de usuario: " USER

# Pedir la contraseña (la entrada no será visible)
read -s -p "Introduce tu contraseña: " PASSWORD
echo

# Configurar el dominio y el servidor
DOMAIN="durum.es"
SERVER="lt$USER"

# Crear un archivo de configuración temporario para remmina
CONFIG_FILE=$(mktemp /tmp/remmina_XXXXX.remmina)

cat <<EOF > $CONFIG_FILE
[remmina]
username=$DOMAIN\\$USER
password=$PASSWORD
server=$SERVER
protocol=RDP
EOF

# Ejecutar remmina con el archivo de configuración
remmina -c $CONFIG_FILE

# Eliminar el archivo de configuración temporario después de la conexión
rm $CONFIG_FILE
