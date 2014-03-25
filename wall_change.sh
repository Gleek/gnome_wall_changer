#!/bin/bash
image_path=$1
#Setting up a path for local storage

if [ ! -d "$image_path" ]; then
  echo "Path doesn't exist (Pass absolute path as parameter)" 1>&2
  exit
fi
local_dir="/home/$(whoami)/.local/wall_change"
#creating local directory
mkdir -p $local_dir
#getting name of the picture
pic=$(find $image_path -regextype posix-extended -regex "(.*\.jpg)|(.*\.png)"|shuf -n1)
echo $pic

#Storing image in local_dir
filename=$(basename "$pic")
extension=".${filename##*.}"
local_wallpaper=$local_dir/mywallpaper$extension
#setting the wallpaper
cp "$pic" $local_wallpaper
#echo $local_wallpaper
#Adding bogus wallpaper (don't know if this is a gsettings bug or i'm doing some basic flaw)
gsettings set org.gnome.desktop.background picture-uri file:/$local_wallpaper
#try increasing the sleep if wallpaper doesn't change
sleep 1;
gsettings set org.gnome.desktop.background picture-uri file://$local_wallpaper
