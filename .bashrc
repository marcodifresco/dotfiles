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
#<C-F4>export DISPLAY=':0'
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
export LANG=en_US.utf8
export LANGUAGE=en_US.utf8
export LC_ALL=C
export PROMPT_COMMAND=(genfun_set_win_title)

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
# Use GPG-agent for SSH authentication
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

# Start pfetch
/usr/bin/pfetch

# Start Fancy Git Prompt
. ~/.fancy-git/prompt.sh


# Wayland
export gbm_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export ENABLE_VKBASALT=1
export LIBVA_DRIVER_NAME=nvidia
export QT_QPA_PLATFORM="wayland-egl"
export ENABLE_HDR_WSI=1
export DXVK_HDR=1

