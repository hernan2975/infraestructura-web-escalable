#!/bin/bash
timestamp=$(date +%F_%T)
pg_dump -U postgres -h localhost mydb > /backups/db_$timestamp.sql
echo "Backup realizado: db_$timestamp.sql"
