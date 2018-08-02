#!/bin/bash
path=$3
downloadpath='/usr/local/caddy/www/aria2/Download' #此处/root/downloads为aria2下载时默认下载目录 自行更改
if [ $2 -eq 0 ]
        then
                exit 0
fi
while true; do
filepath=$path
path=${path%/*}; 
if [ "$path" = "$downloadpath" ] && [ $2 -eq 1 ]
    then
    rclone move "$filepath" /lala/gdrive    #你设置的谷歌挂载目录 自行更改
    exit 0
elif [ "$path" = "$downloadpath" ]
    then
    mv "$filepath"/ /lala/gdrive/"${filepath##*/}"/  #你设置的谷歌挂载目录 自行更改
    exit 0
fi
done