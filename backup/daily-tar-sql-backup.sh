#!/bin/bash
# Quick&Dirty Legacy Backup Script (2009-style)
# Dump SQL + TAR das komplette Verzeichnis

DATE=$(date +%F)
BACKUP_DIR="/home/user/backup"
SITE_DIR="/var/www/html"
DB_NAME="wordpress"
DB_USER="root"
DB_PASS="secret"

mkdir -p $BACKUP_DIR

# SQL Dump
mysqldump -u$DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/${DB_NAME}_$DATE.sql

# Files Backup
tar -czf $BACKUP_DIR/site_$DATE.tar.gz $SITE_DIR
