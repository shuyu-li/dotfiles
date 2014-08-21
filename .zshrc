# Path to your oh-my-zsh configuration.
# ZSH=$HOME/.on-my-zsh
ZSH=$HOME/tars/shell_personal/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
## time that oh-my-zsh is loaded.
#ZSH_THEME="random"
#ZSH_THEME="kphoen"
ZSH_THEME="my-amuse"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
#DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)#colorize
# plugins=(pip colorize debian python themes vi-mode)
plugins=(python zsh-syntax-highlighting themes pip mvn)

source $ZSH/oh-my-zsh.sh
unsetopt correct
unsetopt correct_all

# Customize to your needs...

eval `dircolors ~/.dircolors`
# set dircolors colorful completion
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}


ulimit -c unlimited

export CCACHE_DIR=/tmp/ccache
export XDG_CACHE_HOME=/tmp/xdgcache

# make colorful MAN output
export LESS_TERMCAP_mb=$'\E[01;31m' # begin blinking
export LESS_TERMCAP_md=$'\E[01;31m' # begin bold
export LESS_TERMCAP_me=$'\E[0m' # end mode
export LESS_TERMCAP_se=$'\E[0m' # end standout-mode
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin standout-odeinfobox
export LESS_TERMCAP_ue=$'\E[0m' # end underline
export LESS_TERMCAP_us=$'\E[01;32m' # begin underline

#export EDITOR='/usr/bin/vim'

# set -o vi

export XMODIFIERS='@im=fcitx'
export XIM=fcitx
export XIM_PROGRAM=fcitx
export QT_IM_MODULE="fcitx"
export GTK_IM_MODULE="fcitx"

alias less='/bin/less -r'
alias more='less'
alias vi='vim'
alias st="sublime_text"
#alias e="stty stop '' -ixoff ; vim"
alias ls='ls -hF --color=tty --show-control-chars --time-style=long-iso'
alias ll='ls -l'
alias make='colormake --short'
alias m='colormake --short'
alias mc='colormake clean --short'
alias mtr='mtr --curses'
alias cp='cp -i'
alias df='df -h'
alias du='du -h'
alias ack='ack-grep'
alias mp4box='MP4Box'
alias hdssh='parallel-ssh -h ~/.ssh/hd.lst -P'
alias hdscp='parallel-scp -h ~/.ssh/hd.lst'
alias pslurp='parallel-slurp'
alias hdrsync='parallel-rsync -av -h ~/.ssh/hd.lst'
alias myrsync='rsync -av --progress'
alias pnuke='parallel-nuke'
alias emacs='emacs -nw'
alias e="vi"
alias cmatrix="cmatrix -a -b -s -C blue -u 4"

alias -s wiki=vim
alias -s py=python
alias -s sh=bash

export LANGUAGE=
export LANG="en_US.UTF8"
export LC_ALL="en_US.UTF8"
#export LANG="zh_CN.UTF8"
#export LC_ALL="zh_CN.UTF8"
export LC_CTYPE="zh_CN.UTF8"

export TERM="xterm-256color"
#export TERM=gnome-terminal
#export TERM=rxvt-256color
#export TERM=fbterm

#umask 037

export GOPATH=$HOME/git/hub/asprin

PATH=$PATH:$HOME/.bin:/usr/sbin:/sbin
PATH=$PATH:/opt/Sublime\ Text\ 2/
PATH=$PATH:/opt/intel/bin
PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
#PATH=$PATH:/opt/hadoop-0.23.7/bin:/opt/hadoop-0.23.7/sbin
#PATH=$PATH:/opt/hadoop-2.2.0/bin:/opt/hadoop-2.2.0/sbin
PATH=$PATH:/usr/lib/fglrx/bin
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:/opt/Ice-3.0.1/bin
PATH=$PATH:$GOPATH/bin
export PATH

bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
bindkey "\e[3~" delete-char
# VT
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
#
# # kvt
# bindkey "\e[H" beginning-of-line
# bindkey "\e[F" end-of-line
#
# # rxvt and konsole (i.e. the KDE-app...)
# bindkey "\e[7~" beginning-of-line
# bindkey "\e[8~" end-of-line

# VT220
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

set completion-ignore-case on

#hash -d dex="$HOME/git/svcTSmux.g/TSDex"
hash -d ott="$HOME/git/ott/streaming"
hash -d power="$HOME/.local/lib/python2.7/site-packages/powerline"


export GREP_OPTIONS='--color=auto'

export HISTCONTROL=erasedups
export HISTSIZE=1000
export HISTIGNORE="cd(| *):(ls|dir)(| *):(rm|mv|cp|ln|scp|rmdir|mkdir) *:(echo|print)(| *):(g|)vim(| *):vi:vi *:e *:cat(| *):man *:(which|whence|type)(| *)|[fb]g(| *):feh *:pwd:exit(| *):date:kill(| *):ping *:ssh *:clear *:sleep *:history:tail *:head *"
export SAVEHIST=1000
export HISTFILE=~/.zsh_history
unsetopt INC_APPEND_HISTORY
#setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
# unset hist_verify to instant get last command by !!
#setopt hist_verify
unsetopt hist_verify

setopt AUTO_LIST
setopt AUTO_MENU

setopt nolistambiguous

setopt interactivecomments


# add this for matlab issue
export AWT_TOOLKIT="MToolkit"
export MATLAB_JAVA="/usr/lib/jvm/default-java/jre/"
export JAVA_HOME="/usr/lib/jvm/default-java/"
export _JAVA_AWT_WM_NONREPARENTING=1

export PKG_CONFIG_PATH=/usr/bin:/usr/lib/pkgconfig
alias gcc="gcc-4.4"
alias g++="g++-4.4"
export CC="gcc-4.4"
export CCFLAGS="-Wall"

export CPP="cpp"
#export CPPFLAGS=""
export CXX="g++"
export CXXFLAGS="-Wall"

#source /opt/intel/inspector_xe_2013/inspxe-vars.sh
#cd git/KLforward
#cd ~/git/SM
#cd git/cl
#source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
export AUTOJUMP_IGNORE_CASE=1
# export AUTOJUMP_SMART_CASE=1
[[ -s ~/.autojump/etc/profile.d/autojump.zsh ]] && . ~/.autojump/etc/profile.d/autojump.zsh
# support autojump zsh tab completion
#autoload -U complinit && compinit -u

source ~/.nvm/nvm.sh

unset GNOME_KEYRING_CONTROL

#j 828 lab
#cd /home/liuy/git/test.g/lisp/scheme/sicp/ch2
#j 828 xv6
#source ~/.zprofile
# if [ $PYTHONPATH ]
# then
#     export PYTHONPATH=$PYTHONPATH:/usr/lib/python2.7/:/usr/lib/python2.7/site-packages/
# else
#     export PYTHONPATH=/usr/lib/python2.7/:/usr/lib/python2.7/site-packages/
# fi

export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache
