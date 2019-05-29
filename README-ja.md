# FCPX Audio Role Append Folder Action.

## Description
Folder Action to convert wav files having audio role,  
for Final Cut Pro X (10.3, and later).  

<img class="border" src="https://raw.githubusercontent.com/taku-o/fcpx-audio-role-workflow/master/images/folder-action-mini.gif" width="400">

## Contents
| file                          | description                                            |
| :---------------------------- | :----------------------------------------------------- |
| FCPX Audio Role Append.action | AutoMator Action to convert wav file.                  |
| Folder Actions Templates      | "Folder Action" examples.                              |
| fcpx-audio-role-append        | Command Line Tool, convert wav file having ixml chunk. |
| README.pdf                    | this file.                                             |

## Usage, Setup.
##### 1. install "FCPX Audio Role Append.action".
first, click "FCPX Audio Role Append.action",  
and install it.  
this Action will be used by Folder Action.  

##### 2. edit "Folder Actions Templates/Audio Role Append.workflow".
click "Audio Role Append.workflow" in "Folder Actions Templates",  
and edit it.  

##### 3. install editted "Audio Role Append.workflow".
click "Audio Role Append.workflow" in "Folder Actions Templates",  
and install it.  

##### 4. select target folder, and set installed folder action.
select converting folder with "Finder" Application,  
and right click to set "Folder Action".  

##### 5. drop wav file to "Folder Action" set folder.
drop converting wav file to folder.  
a little lator,  
dropped wav file will be converted by "Folder Action".  

##### 6. import generated wav file to Final Cut Pro X.
import generated wav file to Final Cut Pro X.  
wav file will be mapped to audio role.  

## Uninstall
- unset "Folder Action".
- remove "~/Library/Workflows/Applications/Folder\ Actions/Audio\ Role\ Append.workflow".
- remove "~/Library/Automator/FCPX\ Audio\ Role\ Append.action".

## Tools
##### fcpx-audio-role-append
Command Line Tool, adding ixml chunk to wav file.

```sh
./fcpx-audio-role-append -i in.wav -o out.wav -t trackName
```

