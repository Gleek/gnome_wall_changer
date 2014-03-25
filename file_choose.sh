dir=$(zenity --file-selection --directory --title="Choose Wallpaper Directory")
delay=$(zenity --entry --text="Delay(minutes)?" --entry-text="15")
./wall_change.sh $dir


##################Currently cron doesn't work#####################
#Getting the directory of shell script
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#echo "*/1 * * * * '$DIR/wall_change.sh $dir'">cronfile
#crontab cronfile
############if you can make cron work uncomment this##############

while :
do
  sleep $(($delay*60))
  ./wall_change.sh $dir
done

