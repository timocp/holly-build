#! /bin/sh

# Backup to /home so that the existing duplicity backup includes this
target=/home/dbbackup
pg_dumpall | gzip > $target/backup-$(date -I).gz

# delete backups older than 14 days, except always keep the first of any month
find $target -mtime +14 -name "backup-*.gz" -not -name "backup-????-??-01.gz" -delete
