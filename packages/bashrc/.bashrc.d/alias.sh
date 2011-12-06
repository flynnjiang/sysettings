# List
alias l='ls'
alias la='ls -a'
alias l.='ls -d .* --color=auto'
alias ll='ls -l'
alias lh='ls -lh'
alias ls='ls --color=auto'

# vim/gvim
if [ -x /usr/bin/vim ]; then
    alias vi='vim'
elif [ -x /usr/bin/vimx ]; then
    alias vi='vimx'
fi

if [ -x /usr/bin/gvim ]; then
    alias gi='gvim'
fi

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

