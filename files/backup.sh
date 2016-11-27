#! /bin/sh

if ! test -e /root/.passphrase; then
    echo "Backup passphrase missing from /root/.passphrase" 1>&2
    exit 1
fi

dupe="duplicity --name holly --archive-dir /srv/duplicity-archive"

read PASSPHRASE < /root/.passphrase
export PASSPHRASE

$dupe \
    --full-if-older-than 1M \
    --include /root \
    --exclude '/home/**/tmp' \
    --exclude '/home/*/.cache' \
    --exclude '/home/*/.rvm' \
    --include /home \
    --include /etc \
    --exclude '**' \
    / file:///srv/backup

# make world readable (for offsite sync)
chmod a+r /srv/backup/*

# remove backups not needed for restores of files older than 2 months
$dupe remove-older-than 2M --force file:///srv/backup
