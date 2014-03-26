dir=$(zenity --file-selection --directory --title="Choose Wallpaper Directory")
case $? in
  0)
    echo "\"$dir\" selected.";;
  1)
    zenity --error --text="No file selected"
    exit 10 ;; 
  -1)
    zenity --error --text="An unexpected error has occurred."
    exit 11 ;;
esac
delay=$(zenity --entry --text="Delay(minutes)?" --entry-text="15")
re='^[0-9]+$'
if ! [[ $delay =~ $re ]] ; then
  zenity --error --text="Invalid Delay"
  exit 1
fi
if [ ! -f ./wall_change.sh ]; then
  zenity --error --text="File wall_change.sh not found (try redownloading the package)"
  exit 2
fi
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

