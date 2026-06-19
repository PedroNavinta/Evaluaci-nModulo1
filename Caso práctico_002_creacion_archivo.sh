#creacion_archivo.sh
#!/bin/bash
DIRECTORIO="/var/www/log"
# Crear directorio
mkdir -p "$DIRECTORIO"
# Nombre del archivo con hora, minuto y segundo
ARCHIVO="archivo_$(date +%H%M%S).log"
# Crear archivo
touch "$DIRECTORIO/$ARCHIVO"
echo "$(date) - Archivo creado: $ARCHIVO"
