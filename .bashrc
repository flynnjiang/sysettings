# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
for i in ~/.bashrc.d/*.sh; do
    if [ -r "$i" ]; then
        "$i" >/dev/null 2>&1
    fi
done
unset i
