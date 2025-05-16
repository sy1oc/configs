# About this directory

## ttf-wps-fonts

This directory contains the fonts you may need to deal with the problem that would happend after the first time downloading wps on your linux.

Wps would tell you that some fonts are missing.

To deal with it, cd to the ttf-wps-fonts then run 
```
./install.sh
```
to complete the auto-installing.

Tips1: If wps cannot be open correctly after installation even reinstallation, you can try to intall wemeet.

Tips2: Download packages **NOT** with nvidia version since it would install *nvidia* who auto disable your open-source *nouveau* driver

## git.log

Run `gl` to update this file. It is equivalent to run
```
git log --graph --oneline > git.log
```
My commit rules
- \+ add
- \- delete
- = fix
- example: `=typo[.zshrc](pormpt)` after the symbol there is a abstract followed by [] and ()
- [] includes file
- () includes content
