#!/bin/bash

TOOLS=clitools.dmg
DMGURL=https://download.developer.apple.com/Developer_Tools/Command_Line_Tools_for_Xcode_12.4/Command_Line_Tools_for_Xcode_12.4.dmg
curl "$DMGURL" -o "$TOOLS"
TMPMOUNT=`/usr/bin/mktemp -d /tmp/clitools.XXXX`
hdiutil attach "$TOOLS" -mountpoint "$TMPMOUNT"
installer -pkg "$(find $TMPMOUNT -name '*.mpkg' -o -name '*.pkg')" -target /
hdiutil detach "$TMPMOUNT"
rm -rf "$TMPMOUNT"1
rm "$TOOLS"
exit