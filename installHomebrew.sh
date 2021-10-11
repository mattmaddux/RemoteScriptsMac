#!/bin/bash

URL_BREW='https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh'

echo -n '- Installing brew ... '
echo | /usr/bin/ruby -e "$(curl -fsSL $URL_BREW)" > /dev/null
if [ $? -eq 0 ]; then echo 'OK'; else echo 'NG'; fi



#!/usr/bin/env bash
# install.sh

URL_BREW='https://raw.githubusercontent.com/Homebrew/install/master/install'

echo -n '- Installing brew ... '
echo | /usr/bin/ruby -e "$(curl -fsSL $URL_BREW)" > /dev/null
if [ $? -eq 0 ]; then echo 'OK'; else echo 'NG'; fi



/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"



# From: https://stackoverflow.com/questions/24426424/unattended-no-prompt-homebrew-installation-using-expect
# Accept xcode-license: https://stackoverflow.com/questions/31384994/how-to-accept-xcode-license
# CLI: https://apple.stackexchange.com/questions/107307/how-can-i-install-the-command-line-tools-completely-from-the-command-line