
## Releases Task

##### 1. update version in package.json

```
vim package.json
```

##### 2. update document files.

```sh
gulp doc
```

##### 3. update "build" resources.

##### 4. create dmg files with Disk Utility.

##### 5. sign dmg file.

```sh
codesign -s "Developer ID Application: Taku Omi (52QJ97GWTE)" --keychain "/Users/$USER/Library/Keychains/login.keychain" fcps-audio-role-workflow.dmg

or

gulp codesign
```

##### 6. post release file to github.

- https://github.com/taku-o/fcpx-audio-role-workflow/releases


