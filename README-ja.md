# FCPX Audio Role Append Folder Action.

## Description
wavファイルをオーディオロール付きに変換するフォルダーアクションです。  
Final Cut Pro Xの10.3以降で利用できます。  

<img class="border" src="https://raw.githubusercontent.com/taku-o/fcpx-audio-role-workflow/master/images/folder-action-mini.gif" width="400">

## Contents
| file                          | description                                            |
| :---------------------------- | :----------------------------------------------------- |
| FCPX Audio Role Append.action | 音声ファイルを変換するAutoMatorのAction。              |
| Folder Actions Templates      | フォルダーアクションのサンプル、利用例。               |
| fcpx-audio-role-append        | 音声ファイルを変換するコマンドラインツール。           |
| README.pdf                    | this file.                                             |

## Usage, Setup.
##### 1. install "FCPX Audio Role Append.action".
まず初めに。  
"FCPX Audio Role Append.action"をクリックして、インストールしましょう。  
このActionはフォルダーアクションから利用されます。  

##### 2. edit "Folder Actions Templates/Audio Role Append.workflow".
"Folder Actions Templates"に入っている、  
"Audio Role Append.workflow"を編集します。  

##### 3. install editted "Audio Role Append.workflow".
"Audio Role Append.workflow"を編集したら、  
再度クリックして、"Audio Role Append.workflow"をインストールします。  

##### 4. select target folder, and set installed folder action.
フォルダーアクションを有効にしたいフォルダーを選択して、  
"フォルダーアクション設定"から、  
"Audio Role Append"アクションを有効にしましょう。  

##### 5. drop wav file to "Folder Action" set folder.
wavファイルをフォルダーに入れてみて、  
しばらくして、  
wavファイルが"フォルダーアクション"で変換されるのを確認してください。  

##### 6. import generated wav file to Final Cut Pro X.
作られたwavファイルをFinal Cut Pro Xに入れると、  
オーディオロールが設定されているのが分かると思います。  

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
- 複数チャネルを持ったwavファイルを正しく変換できない問題がある。
    - (例えば、CeVIO)


