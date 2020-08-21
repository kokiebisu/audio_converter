#!/bin/bash
#
# This script backups a given file 
FILE=$1
function backup_file() {
    if [ -f $1 ]
    then 
        local BACKUP="/tmp/$(basename ${1}).$(date + +%F)"
        echo "Backing up $1 to ${BACKUP}"
        cp $1 $BACKUP
    fi
}
backup_file FILE
if [ $? -eq 0 ]
then
    echo "Successful"
else 
    echo "Something wrong happened"
    exit 1
fi