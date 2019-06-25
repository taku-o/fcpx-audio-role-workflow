#!/usr/bin/env sh

#  main.command
#  FCPX Audio Role Append

#  Created by taku-o on 2019/05/24.
#  Copyright © 2019年 taku-o. All rights reserved.

echo "--------" 1>&2
echo "prefix: $prefix" 1>&2
echo "suffix: $suffix" 1>&2
echo "audioRoleName: $audioRoleName" 1>&2

EXE_PATH="${HOME}/Library/Automator/FCPX Audio Role Append.action/Contents/Resources/fcpx-audio-role-append"

if [ -n "$audioRoleName" ]; then
    ;
else
    echo "audioRoleName is not set." 1>&2
    exit 1
fi

while read line; do
    echo "target: ${line}." 1>&2
    if [ -e "${prefix}${line%.wav}${suffix}.wav" ]; then
        echo "target: ${line} already existing. skip." 1>&2
    else
        OUTPUT="${prefix}${line%.wav}${suffix}.wav"
        echo "${EXE_PATH}" encode -i "${line}" -t "${audioRoleName}" -o "${OUTPUT}" 1>&2
        "${EXE_PATH}" encode -i "${line}" -t "${audioRoleName}" -o "${OUTPUT}"
    fi
done




