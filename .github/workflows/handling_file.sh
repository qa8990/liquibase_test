#!/bin/bash

# Renombrar el archivo
mv dev/db/changelog/changelog.sql "dev/db/changelog/changelog_$(date +'%Y%m%d%H%M%S').sql"

# Verificar si el directorio de destino existe
YEAR=$(date +'%Y')
MONTH=$(date +'%m')
DEST_FOLDER="dev/db/changelog/$YEAR/$MONTH"

# Mover el archivo al directorio de destino
mv dev/changes/changelog_*.sql "$DEST_FOLDER/"
