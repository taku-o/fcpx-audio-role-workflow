# FCPX Audio Role Append Folder Action.

## Description
Folder Action to convert wav files having audio role,  
for Final Cut Pro X (10.3, and later).  

see also,   
Final Cut Pro X: Configure audio role assignment during import  
https://support.apple.com/kb/PH26179

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

<img class="border" src="https://raw.githubusercontent.com/taku-o/fcpx-audio-role-workflow/master/images/click-action.png" width="400">
<img class="border" src="https://raw.githubusercontent.com/taku-o/fcpx-audio-role-workflow/master/images/dialog-install-action.png" width="400">

##### 2. edit "Folder Actions Templates/Audio Role Append.workflow".
click "Audio Role Append.workflow" in "Folder Actions Templates",  
and edit it.  

<img class="border" src="https://raw.githubusercontent.com/taku-o/fcpx-audio-role-workflow/master/images/click-workflow.png" width="400">
<img class="border" src="https://raw.githubusercontent.com/taku-o/fcpx-audio-role-workflow/master/images/dialog-edit-or-install-workflow.png" width="400">
<img class="border" src="https://raw.githubusercontent.com/taku-o/fcpx-audio-role-workflow/master/images/set-folder-of-workflow.png" width="400">

##### 3. install editted "Audio Role Append.workflow".
click "Audio Role Append.workflow" in "Folder Actions Templates",  
and install it.  

<img class="border" src="https://raw.githubusercontent.com/taku-o/fcpx-audio-role-workflow/master/images/click-workflow.png" width="400">
<img class="border" src="https://raw.githubusercontent.com/taku-o/fcpx-audio-role-workflow/master/images/dialog-edit-or-install-workflow.png" width="400">

##### 4. select target folder, and set installed folder action.
select converting folder with "Finder" Application,  
and right click to set "Folder Action".  

<img class="border" src="https://raw.githubusercontent.com/taku-o/fcpx-audio-role-workflow/master/images/set-folder-action.png" width="400">
<img class="border" src="https://raw.githubusercontent.com/taku-o/fcpx-audio-role-workflow/master/images/select-folder-action-list.png" width="400">

##### 5. drop wav file to "Folder Action" set folder.
drop converting wav file to folder.  
a little lator,  
dropped wav file will be converted by "Folder Action".  

TODO image drop wav file

##### 6. import generated wav file to Final Cut Pro X.
import generated wav file to Final Cut Pro X.  
wav file will be mapped to audio role.  

TODO image move to final cut pr

## Uninstall
- unset "Folder Action".
- remove "~/Library/Workflows/Applications/Folder\ Actions/Audio\ Role\ Append.workflow".
- remove "~/Library/Automator/FCPX\ Audio\ Role\ Append.action".

## Tools
##### fcpx-audio-role-append usage.
Command Line Tool, convert wav file having ixml chunk.  

```sh
./fcpx-audio-role-append -i in.wav -o out.wav -t trackName
```

## Known Issue
- failed to convert "multiple channel", "mixdown" wav audio file.


