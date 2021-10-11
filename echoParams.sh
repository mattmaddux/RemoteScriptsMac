#!/bin/bash

echo $0
echo $1
echo $2

export A="$1"
echo "A: $A"
sudo -u testuser echo "A as User: $A"