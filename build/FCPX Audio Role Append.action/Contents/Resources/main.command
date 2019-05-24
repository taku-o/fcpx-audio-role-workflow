#!/usr/bin/env sh

#  main.command
#  FCPX Audio Role Append

#  Created by taku-o on 2019/05/24.
#  Copyright © 2019年 taku-o. All rights reserved.

#echo $prefix >> /tmp/aa.txt
#echo $suffix >> /tmp/aa.txt
#echo $audioRoleName >> /tmp/aa.txt
#echo $prefix
#echo $suffix
#echo $audioRoleName
#echo "\n"

EXE_PATH="${HOME}/Library/Automator/FCPX Audio Role Append.action/Contents/Resources/fcpx-audio-role-append"

if [ -n "$audioRoleName" ] then

    for f in "$@"
    do
        "${EXE_PATH}" -i "$f" -t "${audioRoleName}" -o "${prefix}${f%.wav}${suffix}.wav"
    done
else
    echo "audioRoleName is not set." 1>&2
    exit 1
fi


