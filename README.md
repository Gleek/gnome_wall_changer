gnome_wall_changer
==================

Changes the current gnome-desktop wallpaper after specified time

###Usage###
- start file_choose.sh 
- choose file
  - wallpaper would be changed randomly based on directory (Error Occurs if path not found)
  - Entry added in cron
-Enjoy

###Files###

- file_choose.sh : takes file name as input , Checks for timer, generates cron
- wall_change.sh : main file that changes wallpaper
- cronfile : specifies the crontab parameters generated and edited by file_choose.sh

###Known Issues###

####wallpaper fades but doesn't change####
Try increasing the sleep time in wall_change.sh
