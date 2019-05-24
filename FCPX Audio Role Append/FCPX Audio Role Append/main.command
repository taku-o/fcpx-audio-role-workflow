#!/usr/bin/env sh

#  main.command
#  FCPX Audio Role Append

#  Created by taku-o on 2019/05/24.
#  Copyright © 2019年 taku-o. All rights reserved.

#echo "--------" >> /tmp/fcpx-append.txt
#echo "prefix: $prefix" >> /tmp/fcpx-append.txt
#echo "suffix: $suffix" >> /tmp/fcpx-append.txt
#echo "audioRoleName: $audioRoleName" >> /tmp/fcpx-append.txt

EXE_PATH="${HOME}/Library/Automator/FCPX Audio Role Append.action/Contents/Resources/fcpx-audio-role-append"

if [ -n "$audioRoleName" ]; then
    #echo "audioRoleName is passed." >> /tmp/fcpx-append.txt
    while read line; do
        #echo "parameter type stdin." >> /tmp/fcpx-append.txt
        #echo "target: ${line}." >> /tmp/fcpx-append.txt
        if [ -e "${prefix}${line%.wav}${suffix}.wav" ]; then
            #echo "target: ${line} already existing. skip." >> /tmp/fcpx-append.txt
        else
            #echo "${EXE_PATH}" -i "${line}" -t "${audioRoleName}" -o "${prefix}${line%.wav}${suffix}.wav" >> /tmp/fcpx-append.txt
            "${EXE_PATH}" -i "${line}" -t "${audioRoleName}" -o "${prefix}${line%.wav}${suffix}.wav"
        fi
    done
else
    echo "audioRoleName is not set." >> /tmp/fcpx-append.txt
    echo "audioRoleName is not set." 1>&2
    exit 1
fi



