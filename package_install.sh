#!/bin/bash

echo "installing $1"

sudo apt-get update > /dev/null

sudo apt-get install $1 -y
echo "$1 package installed"

