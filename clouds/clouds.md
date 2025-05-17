# About this directory

## ttf-wps-fonts

This directory contains the fonts you may need to deal with the font missing warning that would happend after the first time downloading wps on your linux.

Run the commands below to solve the font problem.
```
cd ttf-wps-fonts
./install.sh
```
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
