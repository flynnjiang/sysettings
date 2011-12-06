G_OS=


if [ -r /etc/issue ]; then
    echo ""
fi

if [ "" == "$G_OS" ]; then
    echo -e "The program can't detect your distribution, please input it.\n\
Here is a avilable value: \n\
      fedora\n\
      ubuntu\n"

    read -p "Your OS is:" G_OS
fi

echo "OS is $G_OS!"

