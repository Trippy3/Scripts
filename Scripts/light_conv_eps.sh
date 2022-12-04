#!/bin/sh
resolution="$1"

if [ `echo $1 | sed -e 's/[^0-9]//g' | wc -c` -ne `echo $1 | wc -c` ]; then
    echo "Usage: light_conv_eps.sh resize-value% path-filename"
    echo "recommend-value:: 100"
    exit 1
fi

while [ $# -ge 2 ]; do
    allpath="$2"
   filename="${allpath##*/}"
   path="${allpath%/*}"
   extention="${allpath##*.}"

   if [ "${extention}" != "eps" ]; then
      echo "file-extention isn't .eps !"
    ###echo "${allpath}"
    ###echo "$2 $3"
      exit 1
   fi
   cmd="convert -resize ${resolution}% ${allpath} ${path}/conv${resolution}_${filename}"

   ${cmd}
   shift
   ###n=`expr $n + 1`
done
