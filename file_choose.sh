dir=$(zenity --file-selection --save --directory --title="Choose Wallpaper Directory")
./wall_change.sh $dir
#Getting the directory of shell script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "@hourly $DIR/wall_change.sh $dir">cronfile
crontab cronfile