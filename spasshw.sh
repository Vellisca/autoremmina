#!/bin/bash

read -p "Ingrese su nombre de usuario: " username
read -s -p "Ingrese su contraseña: " password
echo

server="lt+$username"
domain="tu_dominio_fijo"
remmina_file=$(mktemp /tmp/remmina_XXXXXX.remmina)

cat << EOF > "$remmina_file"
[remmina]
username=$username
password=$password
domain=$domain
server=$server
protocol=RDP
EOF

# Ejecuta remmina con el archivo de configuración
remmina -c "$remmina_file"
rm "$remmina_file"
