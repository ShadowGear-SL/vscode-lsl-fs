#!/bin/bash
# Quick build and local install. Requires vsce be installed globally via npm.
rm *.vsix
vsce package

for FILE in *.vsix
do
    code --install-extension ${FILE}
    break
done
