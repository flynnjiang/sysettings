# .bashrc, bash config file, for non-login shell.

# Source global bash settings first.
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific bash settings.
for i in ~/.bashrc.d/*.sh; do
    if [ -r "$i" ]; then
        . "$i" 
    fi
done
unset i
