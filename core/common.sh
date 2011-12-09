APPS_YUM_PATH="/usr/bin/yum"
APPS_APT_PATH="/usr/bin/apt-get"


APPS_INSTALL=""
if [ -x "$APPS_YUM_PATH" ]; then
    APPS_INSTALL="$APPS_YUM_PATH"
elif [ -x "$APPS_APT_PATH" ]; then
    APPS_INSTALL="$APPS_APT_PATH"
fi

IS_CONTINUE=""
install_packages()
{
    if [ "" != "$APPS_INSTALL" ]; then
        echo "==========================================================================="
        echo "Will install these packages: $*"
        echo "==========================================================================="

        while true
        do
            read -p "Do you really want to install these packages? (y/n) [y]" IS_CONTINUE
            if [ "y" == "$IS_CONTINUE" -o "" == "$IS_CONTINUE" ]; then
                sudo $APPS_INSTALL "install" $@
                break
            elif [ "n" == "$IS_CONTINUE" ]; then
                break
            fi
        done
    else
        echo "Needs yum or apt installed!"
    fi
}

remove_packages()
{
    if [ "" != "$APPS_INSTALL" ]; then
        echo "==========================================================================="
        echo "Will remove these packages: $*"
        echo "==========================================================================="

        while true
        do
            read -p "Do you really want to remove these packages? (y/n) [y]" IS_CONTINUE
            if [ "y" == "$IS_CONTINUE" -o "" == "$IS_CONTINUE" ]; then
                sudo $APPS_INSTALL "remove" $@
                break
            elif [ "n" == "$IS_CONTINUE" ]; then
                break
            fi
        done
    else
        echo "Needs yum or apt installed!"
    fi
}

