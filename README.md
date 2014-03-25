Gnome Wallpaper Automater
=========================

Changes the current gnome desktop wallpaper automatically, after specified time

###Usage###
- start file_choose.sh 
- choose file
  - wallpaper would be changed randomly based on directory (Error Occurs if path not found)
  - Entry added in cron.
- Enjoy

###Files###

- file_choose.sh : takes file name as input , Checks for timer, generates cron
- wall_change.sh : main file that changes wallpaper
- cronfile : specifies the crontab parameters generated and edited by file_choose.sh

###Known Issues###

####wallpaper fades but doesn't change####
Try increasing the sleep time in wall_change.sh

####Cron Doesn't Work Correctly ####
Couldn't make cron work for now using sleep instead
If you know how to set cron check the file_choose.sh
or you can use any other cron service to start "wall_change.sh /path/of/wallpaper/directory"
