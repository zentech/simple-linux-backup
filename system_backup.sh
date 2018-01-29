#!/bin/bash
##############################################
# script to performe a simple backup of system
# author: Jorge Luis Vazquez
# date: 3-21-2015
##############################################

#what to backup
backup_files="/home/jorge /etc /root /boot /opt"

#destination directory
dest="/media/jorge/DATA/backup"

#archive file name
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"


#printing some output to screen
echo "Backing up important directories..."
date
echo 

#backup command
tar -czf $dest/$archive_file $backup_files


#print result to screen and listing backup files
echo
if [ $? -eq 0 ]; then
	echo "Backup finished successfully!..."
fi

date
ls -lh $dest


#END
