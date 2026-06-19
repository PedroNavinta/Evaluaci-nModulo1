#Script : backup_formato_zip_tar.sh
#!/bin/bash
ORIGEN="/var/estudiante/log"
DESTINO="/var/www/backup"
# Crear directorio de backup 
mkdir -p "$DESTINO"
# formato fecha y hora de backup
FECHA=$(date +%Y%m%d_%H%M%S)
# Backup formaro TAR
tar -cvf "$DESTINO/backup_$FECHA.tar" -C "/var/estudiante" log
# Backup formato ZIP
zip -r "$DESTINO/backup_$FECHA.zip" "$ORIGEN"
echo "$(date) - Backups creados correctamente"
