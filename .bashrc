# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]]; then
  # Shell is non-interactive.  Be done now!
  return
fi

## SHELL VARIABLES ##
export CCACHE_DIR="~/.cache/ccache"
export EDITOR=vim
export LD_BIND_NOW=1
export OLLAMA_HOST=192.168.0.22:11434
export PATH=/usr/local/bin:/archive/scripts/:$PATH
export PROMPT_COMMAND=(genfun_set_win_title)
export QT_QPA_PLATFORM="wayland"
export SSH_ENV="$HOME/.ssh/environment"
export SUDO_ASKPASS="/usr/bin/ssh-askpass-fullscreen"
export TERM="alacritty"
export VISUAL="vim"
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:/home/marco/.local/share/flatpak/exports/share:${XDG_DATA_DIRS}"

# LANGUAGE
export LANG=en_US.utf8
export LANGUAGE=en_US.utf8
export LC_ALL=en_US.utf8
export LC_TIME=de_CH.utf8
export LC_MONETARY=de_CH.utf8
export LC_PAPER=de_CH.utf8
export LC_MEASUREMENT=de_CH.utf8

## ALIASES ##
# Some private aliases that are no use to other people
if [ -e $HOME/.bash_aliases ]; then
  source $HOME/.bash_aliases
fi

## OTHER SETTINGS ##
# Set the personal Gemini API key
source ~/.gemini_api_key

# Sudo bash completion
complete -cf sudo

# Auto cd to directory by simply writing its name
shopt -s autocd

# Infinite bash history.
export HISTCONTROL=ignoredups:erasedup
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "

# Use GPG-agent for SSH authentication
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

# Set console colors
dircolors -p >~/.dircolors

# Start pfetch
/usr/bin/pfetch

# Volta support
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Set bash prompt
export GIT_PS1_SHOWDIRTYSTATE=1
source ~/.git-prompt.sh
source ~/.bash_prompt

# Enter tmux session
if [ -z "$TMUX" ]; then
  /usr/bin/tmux attach -t main || /usr/bin/tmux new-session -s main
fi

# Host specific settings
if [ -e $HOME/.bash_host ]; then
  source $HOME/.bash_host
fi
