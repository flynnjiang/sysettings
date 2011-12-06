#!/bin/bash

#############################
# Setup ENV
#############################
ROOTDIR=`pwd`

cd core
if [ -r main.sh ]; then
    . main.sh
fi



##############################
# Install packages.
##############################
for i in $ROOTDIR/packages/*; do
    if [ -d "$i" ]; then
        cd $i
        if [ -r "./install.sh" ]; then
            echo "+++ INSTALL: $i"
            . install.sh
        fi
    fi
done

unset i
