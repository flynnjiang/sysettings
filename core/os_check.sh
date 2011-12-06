LINUX_DIST=


if [ -r /etc/issue ]; then
    if [ "" != "$(grep -i 'Fedora' /etc/issue)" ]; then
        LINUX_DIST="fedora"
    elif [ "" != "$(grep -i 'Ubuntu' /etc/issue)" ]; then
        LINUX_DIST="ubuntu"
    elif [ "" != "$(grep -i 'Linux Mint' /etc/issue)" ]; then
        LINUX_DIST="linux_mint"
    fi
fi

if [ "" == "$LINUX_DIST" ]; then
    echo -e "\
Oh, sorry! I'm not sure which distribution you use, but you can tell \
me about it. ^_^\n\

Here are a list I supported:\n\
    fedora\n\
    ubuntu\n\
    linux_mint\n\
    other\n"

    read -p "My distribution is:" LINUX_DIST
fi

echo "Your Linux distribution is [$LINUX_DIST]!"
