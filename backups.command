rsync -azP /Users/matgreten/Documents/Finances/Budget/ /Users/matgreten/Documents/Walk/Misc/Budgets
rsync -azP /Users/matgreten/Documents/Finances/Budget/ /Users/matgreten/Kapost/OneDrive\ -\ Kapost/
rsync -azP /Users/matgreten/Library/LaunchAgents/ /Users/matgreten/Documents/Rsync/launchd/LaunchAgents/

# open /Users/matgreten/Documents/Rsync/backup_aliases/c1_backups/
open /Users/matgreten/Documents/Rsync/backup_aliases/c1_documents/
# open /Users/matgreten/Documents/Rsync/backup_aliases/c1_music/
# open /Users/matgreten/Documents/Rsync/backup_aliases/c1_pictures/
# open /Users/matgreten/Documents/Rsync/backup_aliases/c1_videos/

echo " "
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo "Rsyncing TK421 to DT-F16"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

echo " "
echo "----------------------------"
echo "Rsyncing Music to DT-F16"
echo "----------------------------"
echo " "

# HOST=pi@192.168.1.23
SOURCE=/Users/matgreten/Music/iTunes/
MUSIC=/Volumes/DT-F16/Music/iTunes/

rsync -azP --exclude-from '/Users/matgreten/Documents/Rsync/exclude_list_music.txt' --delete $SOURCE $MUSIC

echo " "
echo "----------------------------"
echo "Rsyncing background_images to DT-F16"
echo "----------------------------"
echo " "

SOURCE2=/Users/matgreten/Pictures/background_images/
PICTURES=/Volumes/DT-F16/Pictures/backgrounds_and_gifs/background_images/

rsync -azP --delete $SOURCE2 $PICTURES

echo " "
echo "----------------------------"
echo "Rsyncing gifs to DT-F16"
echo "----------------------------"
echo " "

SOURCE3=/Users/matgreten/Pictures/gifs/
GIFS=/Volumes/DT-F16/Pictures/backgrounds_and_gifs/gifs/

rsync -azP --delete $SOURCE3 $GIFS


echo " "
echo "----------------------------"
echo "Rsyncing Calibre to DT-F16"
echo "----------------------------"
echo " "
rsync -azP --delete /Users/matgreten/Documents/Calibre/ /Volumes/DT-F16/Documents/Books/Calibre/

echo " "
echo "----------------------------"
echo "Rsyncing Documents to DT-F16"
echo "----------------------------"
echo " "
rsync -azP --delete /Users/matgreten/Documents/Rsync/ /Volumes/DT-F16/Documents/Rsync/

echo " "
echo "----------------------------"
echo "Rsyncing personal_git to DT-F16"
echo "----------------------------"
echo " "
rsync -azP --delete /Users/matgreten/personal_git/ /Volumes/DT-F16/Programming/personal_git/

echo " "
echo "----------------------------"
echo "Rsyncing RubymineProjects to DT-F16"
echo "----------------------------"
echo " "
rsync -azP --delete /Users/matgreten/RubymineProjects/ /Volumes/DT-F16/Programming/RubymineProjects/

echo " "
echo "----------------------------"
echo "Rsyncing WebstormProjects to DT-F16"
echo "----------------------------"
echo " "
rsync -azP --delete /Users/matgreten/WebstormProjects/ /Volumes/DT-F16/Programming/WebstormProjects/

echo " "
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo "Rsyncing DT-F16 to C1-10P"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo " "
echo "----------------------------"
echo "Rsyncing Backups to C1-10P"
echo "----------------------------"
echo " "

rsync -azP --delete /Volumes/DT-F16/Backups/ /Volumes/C1-10P/Backups/

echo " "
echo "----------------------------"
echo "Rsyncing Documents to C1-10P"
echo "----------------------------"
echo " "
rsync -azP --delete /Volumes/DT-F16/Documents/ /Volumes/C1-10P/Documents/

echo " "
echo "----------------------------"
echo "Rsyncing Music to C1-10P"
echo "----------------------------"
echo " "
rsync -azP --delete /Volumes/DT-F16/Music/ /Volumes/C1-10P/Music/

echo " "
echo "----------------------------"
echo "Rsyncing Pictures to C1-10P"
echo "----------------------------"
echo " "
rsync -azP --delete /Volumes/DT-F16/Pictures/ /Volumes/C1-10P/Pictures/

echo " "
echo "----------------------------"
echo "Rsyncing Videos to C1-10P"
echo "----------------------------"
echo " "
rsync -azP --delete /Volumes/DT-F16/Videos/ /Volumes/C1-10P/Videos/

echo " "
echo "----------------------------"
echo "Rsyncing Programming to C1-10P"
echo "----------------------------"
echo " "
rsync -azP --delete /Volumes/DT-F16/Programming/ /Volumes/C1-10P/Programming/

# killall -KILL Finder
