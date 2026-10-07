#!/bin/bash
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_DIR="/home/felix/backups"
WEB_DIR="/var/www/html"

mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/wordpress_files_$DATE.tar.gz $WEB_DIR
mysqldump -u root -p wordpress_db > $BACKUP_DIR/wordpress_db_$DATE.sql
