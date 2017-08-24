#!/bin/sh

if [ -r ./$LINUX_DIST.list ]; then
    PACKAGE_LIST=`grep -v "^#" ./$LINUX_DIST.list`
    install_packages $PACKAGE_LIST
else
    echo "warning: can't found any package to install!"
fi

