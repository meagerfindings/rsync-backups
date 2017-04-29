#!/bin/sh

date=`date "+%Y-%m-%d-%H_%M"`-Full
SOURCE=/Users/matgreten/
HOST=pi@192.168.0.23
CURRENT=/media/pi/timemachine/Backups/TK421/matgreten/current
BACKUPS=/media/pi/timemachine/Backups/TK421/matgreten

rsync -azP --delete --exclude-from '/users/matgreten/Documents/Rsync/exclude_list.txt' --link-dest=$CURRENT $SOURCE $HOST:$BACKUPS/$date 

ssh $HOST "rm -r /media/pi/timemachine/Backups/TK421/matgreten/current"
ssh $HOST "ln -s /media/pi/timemachine/Backups/TK421/matgreten/$date/ /media/pi/timemachine/Backups/TK421/matgreten/current"