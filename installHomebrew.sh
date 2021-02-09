#!/usr/bin/env bash
# install.sh

URL_BREW='$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)'

echo -n '- Installing brew ... '
echo | /usr/bin/ruby -e "$(curl -fsSL $URL_BREW)" > /dev/null
if [ $? -eq 0 ]; then echo 'OK'; else echo 'NG'; fi