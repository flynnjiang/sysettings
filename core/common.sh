APPS_YUM_PATH="/usr/bin/yum"
APPS_APT_PATH="/usr/bin/apt-get"


APPS_INSTALL=""
if [ -x "$APPS_YUM_PATH" ]; then
    APPS_INSTALL="$APPS_YUM_PATH"
elif [ -x "$APPS_APT_PATH" ]; then
    APPS_INSTALL="$APPS_GET_PATH"
fi

install_packages()
{
    if [ "" != "$APPS_INSTALL" ]; then
        echo "Will install these packages: $*"
        echo "============================================================="
        sudo $APPS_INSTALL "install" $@
    else
        echo "Needs yum or apt installed!"
    fi
}

remove_packages()
{
    if [ "" != "$APPS_INSTALL" ]; then
        echo "Will remove these packages: $*"
        echo "============================================================="
        sudo $APPS_INSTALL "remove" $@
    else
        echo "Needs yum or apt installed!"
    fi
}

