#!/bin/bash

src=$1
dest=$2

timestamp=$( date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src

echo -e "backup done"



