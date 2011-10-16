# .bashrc, bash config file, for non-login shell.

# Source global bash settings first.
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific bash settings.
for i in ~/.bashrc.d/*.sh; do
    if [ -r "$i" ]; then
        "$i" >/dev/null 2>&1
    fi
done
unset i
