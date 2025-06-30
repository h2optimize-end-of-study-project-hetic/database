#!/bin/bash

set -e

POSTGRES_HOST="${POSTGRES_HOST:-postgres}"
POSTGRES_USER="${POSTGRES_USER:-admin}"
POSTGRES_METABASE_DB="${POSTGRES_METABASE_DB:-metabase}"
BACKUP_DIR="/backup"

mkdir -p "$BACKUP_DIR"

backup() {
  TIMESTAMP=$(date +%Y%m%d_%H%M%S)
  FILE="${BACKUP_DIR}/${POSTGRES_METABASE_DB}_backup_${TIMESTAMP}.sql"
  echo "[$(date)] Backup de $POSTGRES_METABASE_DB vers $FILE"

  docker exec "$POSTGRES_HOST" pg_dump -U "$POSTGRES_USER" -d "$POSTGRES_METABASE_DB" > "$FILE" 2>/dev/null || {
    echo "Erreur lors du backup"
    return 1
  }

  ls -1t "${BACKUP_DIR}"/${POSTGRES_METABASE_DB}_backup_*.sql | tail -n +4 | xargs -r rm -f
  echo "Backup terminé"
}

restore_if_needed() {
  echo "[$(date)] Vérification si restauration nécessaire..."

  DB_EXISTS=$(docker exec "$POSTGRES_HOST" psql -U "$POSTGRES_USER" -t -d postgres -c \
    "SELECT 1 FROM pg_database WHERE datname = '$POSTGRES_METABASE_DB';" | tr -d '[:space:]')

  if [ "$DB_EXISTS" != "1" ]; then
    echo "Base '$POSTGRES_METABASE_DB' absente. Création..."
    docker exec "$POSTGRES_HOST" psql -U "$POSTGRES_USER" -d postgres -c \
      "CREATE DATABASE $POSTGRES_METABASE_DB;"
  fi

  ROW_COUNT=$(docker exec "$POSTGRES_HOST" psql -U "$POSTGRES_USER" -d "$POSTGRES_METABASE_DB" -t -c \
    "SELECT COUNT(*) FROM public.action;" 2>/dev/null | tr -d '[:space:]')

  if [ -z "$ROW_COUNT" ] || ! [[ "$ROW_COUNT" =~ ^[0-9]+$ ]]; then
    echo "Table 'action' absente ou illisible, tentative de restauration..."

    LATEST_BACKUP=$(ls -t "${BACKUP_DIR}/"*.sql 2>/dev/null | head -n 1)
    if [ -f "$LATEST_BACKUP" ]; then
      echo "Restauration depuis $(basename "$LATEST_BACKUP")"
      docker exec -i "$POSTGRES_HOST" psql -U "$POSTGRES_USER" -d "$POSTGRES_METABASE_DB" < "$LATEST_BACKUP"
      echo "Restauration terminée"
    else
      echo "Aucune sauvegarde trouvée, restauration impossible"
    fi
  else
    echo "Table 'action' présente avec $ROW_COUNT lignes, restauration non nécessaire"
  fi
}

if [ "$1" = "manual-backup" ]; then
  backup
  exit 0
fi

echo "Attente de disponibilité du conteneur $POSTGRES_HOST..."
until docker exec "$POSTGRES_HOST" pg_isready -U "$POSTGRES_USER" > /dev/null 2>&1; do
  echo "..."
  sleep 2
done

restore_if_needed

(
  while true; do
    backup
    sleep 3600
  done
) &

docker events --filter "event=stop" --filter "event=die" |
while read -r event; do
  if echo "$event" | grep -qE "(postgres_test|metabase_test)"; then
    echo "Conteneur arrêté détecté → Backup immédiat"
    backup
  fi
done