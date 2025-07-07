#!/bin/bash

# Variables
BACKUP_DIR="/var/backups/postgres"
TIMESTAMP=$(date +%F-%H%M%S)
DB_NAME="app"
USER="postgres"

# Crear carpeta si no existe
mkdir -p "$BACKUP_DIR"

# Ejecutar backup
pg_dump -U $USER $DB_NAME > "$BACKUP_DIR/db_${DB_NAME}_$TIMESTAMP.sql"

# Confirmación
echo "✅ Backup creado en $BACKUP_DIR/db_${DB_NAME}_$TIMESTAMP.sql"
