# Alias for git config backup system
alias dotfiles='/usr/bin/git --git-dir=/archive/GitBare/dotfiles.git/ --work-tree=/home/marco/'

# Fix "Unable to set up transient service directory: XDG_RUNTIME_DIR "/run/user/1000" is owned by uid 1000, not our uid 0"
alias su='/bin/su -'

# Readable time in dmesg
alias dmesg='dmesg -T'

# Colorize the grep command output for ease of use
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Generate sha1 digest
alias sha1='openssl sha1'

# Create parent directories on demand
alias mkdir='mkdir -pv'

# Colorize diff output
alias diff='colordiff'

# Control output of ping
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

# Add safety nets
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# Preventing changing permissions on /
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Resume wget by default
alias wget='wget -c'

## set some other defaults ##
alias df='df -H'
alias du='du -ch'

# Use tmux instead of screen
alias screen='tmux'

# Neovim
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"

# dosbox
alias dosbox="/usr/bin/dosbox -conf ~/.config/dosbox/dosbox.conf"
