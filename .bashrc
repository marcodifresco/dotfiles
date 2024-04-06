# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


## SHELL VARIABLES ##
export PATH=/usr/local/bin:/archive/scripts/:$PATH
#export DISPLAY=':0'
export EDITOR=vim
export CCACHE_DIR="~/.cache/ccache"
export SUDO_ASKPASS="/usr/bin/ssh-askpass-fullscreen"
export SSH_ENV="$HOME/.ssh/environment"
export TERM="alacritty"
export HISTCONTROL=ignoredups:erasedup
export DXVK_CONFIG_FILE="$HOME/.config/dxvk.conf"
export VISUAL="vim"
export GDK_SCALE=1.5
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export LD_BIND_NOW=1
export VKD3D_CONFIG=force_host_cached
export VKD3D_DEBUG=none
export WINEESYNC=1
export WINEDEBUG="-all"
export __GL_THREADED_OPTIMIZATIONS=1
export __GL_SYNC_TO_VBLANK=0
export __GL_NextGenCompiler=1


# Ccache
export PATH="/usr/lib/ccache/bin${PATH:+:}$PATH"
export CCACHE_DIR="/var/cache/ccache"


## ALIASES ##
# Some private aliases that are no use to other people
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi


## OTHER SETTINGS ##
# Sudo bash completion
complete -cf sudo

# Auto cd to directory by simply writing its name
shopt -s autocd

# Infinite bash history.
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "


## AUTO EXECUTION #
# Start the ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > ${SSH_ENV}
    echo succeeded
    chmod 600 ${SSH_ENV}
    . ${SSH_ENV} > /dev/null
    /usr/bin/ssh-add
}
if [ -f "${SSH_ENV}" ]; then
     . ${SSH_ENV} > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

# Start keychain
keychain ~/.ssh/id_rsa
. ~/.keychain/$HOSTNAME-sh

# Start pfetch
/usr/bin/pfetch

# Start Fancy Git Prompt
. ~/.fancy-git/prompt.sh

