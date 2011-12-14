PACKAGE_LIST_FILE=

case "$LINUX_DIST" in
    fedora)
        PACKAGE_LIST_FILE="fedora.list"
        ;;
    ubuntu)
        PACKAGE_LIST_FILE="ubuntu.list"
        ;;
    linux_mint)
        PACKAGE_LIST_FILE="linux_mint.list"
        ;;
    *)
        echo "Unsupport this distribution!"
        exit 1;
        ;;
esac

PACKAGE_LIST=`grep -v "^#" ./$PACKAGE_LIST_FILE`

install_packages $PACKAGE_LIST
