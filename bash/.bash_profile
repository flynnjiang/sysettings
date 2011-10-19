# .bash_profile, for login shell.

# Load bash settings first.
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User startup programs here.
if [ -f ~/.bash_autorun ]; then
	. ~/.bash_autorun
fi
