#!/bin/bash
# Directorios
ORIGEN="/var/log"
DESTINO="/home/estudiante/log"
# Crear directorio destino si no existe
mkdir -p "$DESTINO"
# Copiar archivos
cp -r "$ORIGEN"/* "$DESTINO"/
echo "$(date) - Copia completada correctamente"
# Eliminacion de directorio origen
rm -rf "$ORIGEN"/*
