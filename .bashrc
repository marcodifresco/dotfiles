# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]]; then
  # Shell is non-interactive.  Be done now!
  return
fi

## SHELL VARIABLES ##
export __GL_NextGenCompiler=1
export __GL_SYNC_TO_VBLANK=0
export __GL_THREADED_OPTIMIZATIONS=1
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export CCACHE_DIR="~/.cache/ccache"
export DXVK_CONFIG_FILE="$HOME/.config/dxvk.conf"
export DXVK_HDR=1
export EDITOR=vim
export ENABLE_HDR_WSI=1
export ENABLE_VKBASALT=1
export GBM_BACKEND=nvidia-drm
export GDK_SCALE=1.5
export HISTCONTROL=ignoredups:erasedup
export LD_BIND_NOW=1
export LIBVA_DRIVER_NAME=nvidia
export OLLAMA_HOST=192.168.0.22:11434
export PATH=/usr/local/bin:/archive/scripts/:$PATH
export PROMPT_COMMAND=(genfun_set_win_title)
export QT_QPA_PLATFORM="wayland"
export SSH_ENV="$HOME/.ssh/environment"
export SUDO_ASKPASS="/usr/bin/ssh-askpass-fullscreen"
export TERM="alacritty"
export VISUAL="vim"
export VKD3D_CONFIG=force_host_cached
export VKD3D_DEBUG=none
export WINEDEBUG="-all"
export WINEESYNC=1
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

# fzf support
source /usr/share/bash-completion/completions/fzf
source /usr/share/fzf/key-bindings.bash

# Set console colors
dircolors -p >~/.dircolors

# Start pfetch
/usr/bin/pfetch

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
