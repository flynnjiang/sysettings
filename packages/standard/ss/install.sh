PACKAGE_LIST_FILE=

case "$G_OS" in
    fedora)
        PACKAGE_LIST_FILE="fedora.list"
        ;;
    ubuntu)
        PACKAGE_LIST_FILE="ubuntu.list"
        ;;
    archlinux)
        PACKAGE_LIST_FILE="archlinux.list"
        ;;
    *)
        PACKAGE_LIST_FILE="fedora.list"
        ;;
esac

PACKAGE_LIST=`cat $ROOTDIR/packages/standard/$PACKAGE_LIST_FILE`

install_packages $PACKAGE_LIST
