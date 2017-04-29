#!/bin/sh

HOST=pi@192.168.0.23

SOURCE=/Users/Shared/iTunes/
MUSIC=/media/pi/bakery/Music/iTunes/

rsync -azP --delete $SOURCE $HOST:$MUSIC

SOURCE2=/Users/Shared/BackgroundImages/
PICUTRES=/media/pi/bakery/Pictures/BackgroundsandGIFs/BackgroundImages/

rsync -azP --delete $SOURCE2 $HOST:$PICUTRES

SOURCE3=/Users/kapost/Pictures/GIFs/
GIFS=/media/pi/bakery/Pictures/BackgroundsandGIFs/GIFs/

rsync -azP --delete $SOURCE3 $HOST:$GIFS