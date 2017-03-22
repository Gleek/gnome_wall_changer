Gnome Wallpaper Automater
=========================

Changes the current gnome desktop wallpaper automatically, after specified time

### Usage ###
- start start.sh 
- choose file
  - wallpaper would be changed randomly based on directory (Error Occurs if path not found)
  - Entry added in cron.
- Enjoy

### Files ###

- start.sh : takes file name as input , Checks for timer, generates cron
- wall_change.sh : main file that changes wallpaper
- cronfile : specifies the crontab parameters generated and edited by start.sh

### Known Issues ###

#### wallpaper fades but doesn't change ####
Try increasing the sleep time in wall_change.sh

#### Cron Doesn't Work Correctly ####
Couldn't make cron work for now using sleep instead
If you know how to set cron check the start.sh
or you can use any other cron service to start "wall_change.sh /path/of/wallpaper/directory"
