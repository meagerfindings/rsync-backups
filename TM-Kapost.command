#!/bin/sh

date=`date "+%Y-%m-%d-%H_%M"`-Inc
HOST=pi@192.168.0.23
SOURCE3=/Users/kapost/
CURRENT3=/media/pi/timemachine/Backups/TK421/kapost/current
BACKUPS3=/media/pi/timemachine/Backups/TK421/kapost

rsync -azP --exclude-from '/users/matgreten/Documents/Rsync/exclude_listKapost.txt' --link-dest=$CURRENT3 $SOURCE3 $HOST:$BACKUPS3/$date

ssh $HOST "rm -r /media/pi/timemachine/Backups/TK421/kapost/current"
ssh $HOST "ln -s /media/pi/timemachine/Backups/TK421/kapost/$date/ /media/pi/timemachine/Backups/TK421/kapost/current"