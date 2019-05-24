#!/usr/bin/env sh

#  main.command
#  FCPX Audio Role Append

#  Created by taku-o on 2019/05/24.
#  Copyright © 2019年 taku-o. All rights reserved.

echo "-------- \n" >> /tmp/fcpx-append.txt
echo "prefix: $prefix \n" >> /tmp/fcpx-append.txt
echo "suffix: $suffix \n" >> /tmp/fcpx-append.txt
echo "audioRoleName: $audioRoleName \n" >> /tmp/fcpx-append.txt

EXE_PATH="${HOME}/Library/Automator/FCPX Audio Role Append.action/Contents/Resources/fcpx-audio-role-append"

if [ -n "$audioRoleName" ] then
    echo "audioRoleName is passed. \n" >> /tmp/fcpx-append.txt
    for f in "$@"
    do
        echo "target: ${f}. \n" >> /tmp/fcpx-append.txt
        "${EXE_PATH}" -i "$f" -t "${audioRoleName}" -o "${prefix}${f%.wav}${suffix}.wav"
    done
else
    echo "audioRoleName is not set. \n" >> /tmp/fcpx-append.txt
    echo "audioRoleName is not set." 1>&2
    exit 1
fi


