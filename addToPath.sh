#!/bin/bash

if test -f "$HOME/.bash_profile"; then
    echo "Adding to bash_profile"
    echo 'export PATH="/Users/testuser/usr/local/bin:$PATH"' >> $HOME/.bash_profile
elif test -f "$HOME/.zprofile"; then
    echo "Adding to zprofile"
    echo 'export PATH="/Users/testuser/usr/local/bin:$PATH"' >> $HOME/.zprofile
elif test -f "$HOME/.profile"; then
    echo "Adding to profile"
    echo 'export PATH="/Users/testuser/usr/local/bin:$PATH"' >> $HOME/.profile
fi